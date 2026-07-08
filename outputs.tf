# --- azurerm_iothub_dps ---
output "iothub_dpses" {
  description = "All iothub_dps resources"
  value       = module.iothub_dpses.iothub_dpses
  sensitive   = true
}
output "iothub_dpses_allocation_policy" {
  description = "List of allocation_policy values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.allocation_policy]
}
output "iothub_dpses_data_residency_enabled" {
  description = "List of data_residency_enabled values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.data_residency_enabled]
}
output "iothub_dpses_device_provisioning_host_name" {
  description = "List of device_provisioning_host_name values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.device_provisioning_host_name]
}
output "iothub_dpses_id_scope" {
  description = "List of id_scope values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.id_scope]
}
output "iothub_dpses_ip_filter_rule" {
  description = "List of ip_filter_rule values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.ip_filter_rule]
}
output "iothub_dpses_linked_hub" {
  description = "List of linked_hub values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.linked_hub]
  sensitive   = true
}
output "iothub_dpses_location" {
  description = "List of location values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.location]
}
output "iothub_dpses_name" {
  description = "List of name values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.name]
}
output "iothub_dpses_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.public_network_access_enabled]
}
output "iothub_dpses_resource_group_name" {
  description = "List of resource_group_name values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.resource_group_name]
}
output "iothub_dpses_service_operations_host_name" {
  description = "List of service_operations_host_name values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.service_operations_host_name]
}
output "iothub_dpses_sku" {
  description = "List of sku values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.sku]
}
output "iothub_dpses_tags" {
  description = "List of tags values across all iothub_dpses"
  value       = [for k, v in module.iothub_dpses.iothub_dpses : v.tags]
}


# --- azurerm_iothub_dps_shared_access_policy ---
output "iothub_dps_shared_access_policies" {
  description = "All iothub_dps_shared_access_policy resources"
  value       = module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies
  sensitive   = true
}
output "iothub_dps_shared_access_policies_enrollment_read" {
  description = "List of enrollment_read values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.enrollment_read]
}
output "iothub_dps_shared_access_policies_enrollment_write" {
  description = "List of enrollment_write values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.enrollment_write]
}
output "iothub_dps_shared_access_policies_iothub_dps_name" {
  description = "List of iothub_dps_name values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.iothub_dps_name]
}
output "iothub_dps_shared_access_policies_name" {
  description = "List of name values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.name]
}
output "iothub_dps_shared_access_policies_primary_connection_string" {
  description = "List of primary_connection_string values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.primary_connection_string]
  sensitive   = true
}
output "iothub_dps_shared_access_policies_primary_key" {
  description = "List of primary_key values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.primary_key]
  sensitive   = true
}
output "iothub_dps_shared_access_policies_registration_read" {
  description = "List of registration_read values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.registration_read]
}
output "iothub_dps_shared_access_policies_registration_write" {
  description = "List of registration_write values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.registration_write]
}
output "iothub_dps_shared_access_policies_resource_group_name" {
  description = "List of resource_group_name values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.resource_group_name]
}
output "iothub_dps_shared_access_policies_secondary_connection_string" {
  description = "List of secondary_connection_string values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.secondary_connection_string]
  sensitive   = true
}
output "iothub_dps_shared_access_policies_secondary_key" {
  description = "List of secondary_key values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.secondary_key]
  sensitive   = true
}
output "iothub_dps_shared_access_policies_service_config" {
  description = "List of service_config values across all iothub_dps_shared_access_policies"
  value       = [for k, v in module.iothub_dps_shared_access_policies.iothub_dps_shared_access_policies : v.service_config]
}



