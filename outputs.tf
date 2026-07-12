# --- azurerm_iothub_dps ---
output "iothub_dpses_allocation_policy" {
  description = "Map of allocation_policy values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_allocation_policy
}

output "iothub_dpses_data_residency_enabled" {
  description = "Map of data_residency_enabled values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_data_residency_enabled
}

output "iothub_dpses_device_provisioning_host_name" {
  description = "Map of device_provisioning_host_name values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_device_provisioning_host_name
}

output "iothub_dpses_id_scope" {
  description = "Map of id_scope values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_id_scope
}

output "iothub_dpses_ip_filter_rule" {
  description = "Map of ip_filter_rule values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_ip_filter_rule
}

output "iothub_dpses_linked_hub" {
  description = "Map of linked_hub values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_linked_hub
  sensitive   = true
}

output "iothub_dpses_location" {
  description = "Map of location values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_location
}

output "iothub_dpses_name" {
  description = "Map of name values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_name
}

output "iothub_dpses_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_public_network_access_enabled
}

output "iothub_dpses_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_resource_group_name
}

output "iothub_dpses_service_operations_host_name" {
  description = "Map of service_operations_host_name values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_service_operations_host_name
}

output "iothub_dpses_sku" {
  description = "Map of sku values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_sku
}

output "iothub_dpses_tags" {
  description = "Map of tags values across all iothub_dpses, keyed the same as var.iothub_dpses"
  value       = module.iothub_dpses.iothub_dpses_tags
}

# --- azurerm_iothub_dps_shared_access_policy ---
output "iothub_dps_shared_access_policies_enrollment_read" {
  description = "Map of enrollment_read values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_enrollment_read
}

output "iothub_dps_shared_access_policies_enrollment_write" {
  description = "Map of enrollment_write values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_enrollment_write
}

output "iothub_dps_shared_access_policies_iothub_dps_name" {
  description = "Map of iothub_dps_name values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_iothub_dps_name
}

output "iothub_dps_shared_access_policies_name" {
  description = "Map of name values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_name
}

output "iothub_dps_shared_access_policies_primary_connection_string" {
  description = "Map of primary_connection_string values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_primary_connection_string
  sensitive   = true
}

output "iothub_dps_shared_access_policies_primary_key" {
  description = "Map of primary_key values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_primary_key
  sensitive   = true
}

output "iothub_dps_shared_access_policies_registration_read" {
  description = "Map of registration_read values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_registration_read
}

output "iothub_dps_shared_access_policies_registration_write" {
  description = "Map of registration_write values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_registration_write
}

output "iothub_dps_shared_access_policies_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_resource_group_name
}

output "iothub_dps_shared_access_policies_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_secondary_connection_string
  sensitive   = true
}

output "iothub_dps_shared_access_policies_secondary_key" {
  description = "Map of secondary_key values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_secondary_key
  sensitive   = true
}

output "iothub_dps_shared_access_policies_service_config" {
  description = "Map of service_config values across all iothub_dps_shared_access_policies, keyed the same as var.iothub_dps_shared_access_policies"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies_service_config
}


