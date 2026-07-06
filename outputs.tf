output "vmware_private_clouds" {
  description = "All vmware_private_cloud resources"
  value       = azurerm_vmware_private_cloud.vmware_private_clouds
  sensitive   = true
}
output "vmware_private_clouds_circuit" {
  description = "List of circuit values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.circuit]
}
output "vmware_private_clouds_hcx_cloud_manager_endpoint" {
  description = "List of hcx_cloud_manager_endpoint values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.hcx_cloud_manager_endpoint]
}
output "vmware_private_clouds_internet_connection_enabled" {
  description = "List of internet_connection_enabled values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.internet_connection_enabled]
}
output "vmware_private_clouds_location" {
  description = "List of location values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.location]
}
output "vmware_private_clouds_management_cluster" {
  description = "List of management_cluster values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.management_cluster]
}
output "vmware_private_clouds_management_subnet_cidr" {
  description = "List of management_subnet_cidr values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.management_subnet_cidr]
}
output "vmware_private_clouds_name" {
  description = "List of name values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.name]
}
output "vmware_private_clouds_network_subnet_cidr" {
  description = "List of network_subnet_cidr values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.network_subnet_cidr]
}
output "vmware_private_clouds_nsxt_certificate_thumbprint" {
  description = "List of nsxt_certificate_thumbprint values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.nsxt_certificate_thumbprint]
}
output "vmware_private_clouds_nsxt_manager_endpoint" {
  description = "List of nsxt_manager_endpoint values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.nsxt_manager_endpoint]
}
output "vmware_private_clouds_nsxt_password" {
  description = "List of nsxt_password values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.nsxt_password]
  sensitive   = true
}
output "vmware_private_clouds_provisioning_subnet_cidr" {
  description = "List of provisioning_subnet_cidr values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.provisioning_subnet_cidr]
}
output "vmware_private_clouds_resource_group_name" {
  description = "List of resource_group_name values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.resource_group_name]
}
output "vmware_private_clouds_sku_name" {
  description = "List of sku_name values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.sku_name]
}
output "vmware_private_clouds_tags" {
  description = "List of tags values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.tags]
}
output "vmware_private_clouds_vcenter_certificate_thumbprint" {
  description = "List of vcenter_certificate_thumbprint values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.vcenter_certificate_thumbprint]
}
output "vmware_private_clouds_vcenter_password" {
  description = "List of vcenter_password values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.vcenter_password]
  sensitive   = true
}
output "vmware_private_clouds_vcsa_endpoint" {
  description = "List of vcsa_endpoint values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.vcsa_endpoint]
}
output "vmware_private_clouds_vmotion_subnet_cidr" {
  description = "List of vmotion_subnet_cidr values across all vmware_private_clouds"
  value       = [for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : v.vmotion_subnet_cidr]
}

