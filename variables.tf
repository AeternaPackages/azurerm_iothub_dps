variable "iothub_dpses" {
  description = <<EOT
Map of iothub_dpses, attributes below
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
    allocation_policy             = optional(string) # Default: "Hashed"
    data_residency_enabled        = optional(bool)   # Default: false
    public_network_access_enabled = optional(bool)   # Default: true
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
      allocation_weight       = optional(number) # Default: 1
      apply_allocation_policy = optional(bool)   # Default: true
      connection_string       = string
      location                = string
    })))
    iothub_dps_shared_access_policies = optional(map(object({
      name                = string
      resource_group_name = string
      enrollment_read     = optional(bool) # Default: false
      enrollment_write    = optional(bool) # Default: false
      registration_read   = optional(bool) # Default: false
      registration_write  = optional(bool) # Default: false
      service_config      = optional(bool) # Default: false
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.iothub_dpses) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.iothub_dpses : [for kk in keys(coalesce(v0.iothub_dps_shared_access_policies, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
