locals {
  iothub_dpses = { for k1, v1 in var.iothub_dpses : k1 => { allocation_policy = v1.allocation_policy, data_residency_enabled = v1.data_residency_enabled, ip_filter_rule = v1.ip_filter_rule, linked_hub = v1.linked_hub, location = v1.location, name = v1.name, public_network_access_enabled = v1.public_network_access_enabled, resource_group_name = v1.resource_group_name, sku = v1.sku, tags = v1.tags } }

  iothub_dps_shared_access_policies = merge([
    for k1, v1 in var.iothub_dpses : {
      for k2, v2 in coalesce(v1.iothub_dps_shared_access_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        iothub_dps_name = module.iothub_dpses.iothub_dpses_name["${k1}"]
      })
    }
  ]...)
}

module "iothub_dpses" {
  source       = "git::https://github.com/AeternaModules/azurerm_iothub_dps.git?ref=v4.80.0"
  iothub_dpses = local.iothub_dpses
}

module "iothub_dps_shared_access_policies" {
  source                            = "git::https://github.com/AeternaModules/azurerm_iothub_dps_shared_access_policy.git?ref=v4.80.0"
  iothub_dps_shared_access_policies = local.iothub_dps_shared_access_policies
  depends_on                        = [module.iothub_dpses]
}

