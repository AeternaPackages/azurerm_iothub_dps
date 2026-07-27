variable "iothub_dps" {
  description = <<EOT
Map of iothub_dps, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku (block)
Optional:
    - allocation_policy
    - data_residency_enabled
    - public_network_access_enabled
    - tags
    - ip_filter_rule (block)
    - linked_hub (block)
Nested iothub_dps_shared_access_policies (azurerm_iothub_dps_shared_access_policy):
    Required:
        - name
        - resource_group_name
    Optional:
        - enrollment_read
        - enrollment_write
        - registration_read
        - registration_write
        - service_config
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    allocation_policy             = optional(string)
    data_residency_enabled        = optional(bool)
    public_network_access_enabled = optional(bool)
    tags                          = optional(map(string))
    sku = object({
      capacity = number
      name     = string
    })
    ip_filter_rule = optional(list(object({
      action  = string
      ip_mask = string
      name    = string
      target  = optional(string)
    })))
    linked_hub = optional(list(object({
      allocation_weight       = optional(number)
      apply_allocation_policy = optional(bool)
      connection_string       = string
      location                = string
    })))
    iothub_dps_shared_access_policies = optional(map(object({
      name                = string
      resource_group_name = string
      enrollment_read     = optional(bool)
      enrollment_write    = optional(bool)
      registration_read   = optional(bool)
      registration_write  = optional(bool)
      service_config      = optional(bool)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.iothub_dps) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.iothub_dps : [for kk in keys(coalesce(v0.iothub_dps_shared_access_policies, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
