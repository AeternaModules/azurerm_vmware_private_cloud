output "vmware_private_clouds_circuit" {
  description = "Map of circuit values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.circuit }
}
output "vmware_private_clouds_hcx_cloud_manager_endpoint" {
  description = "Map of hcx_cloud_manager_endpoint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.hcx_cloud_manager_endpoint }
}
output "vmware_private_clouds_internet_connection_enabled" {
  description = "Map of internet_connection_enabled values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.internet_connection_enabled }
}
output "vmware_private_clouds_location" {
  description = "Map of location values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.location }
}
output "vmware_private_clouds_management_cluster" {
  description = "Map of management_cluster values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.management_cluster }
}
output "vmware_private_clouds_management_subnet_cidr" {
  description = "Map of management_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.management_subnet_cidr }
}
output "vmware_private_clouds_name" {
  description = "Map of name values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.name }
}
output "vmware_private_clouds_network_subnet_cidr" {
  description = "Map of network_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.network_subnet_cidr }
}
output "vmware_private_clouds_nsxt_certificate_thumbprint" {
  description = "Map of nsxt_certificate_thumbprint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.nsxt_certificate_thumbprint }
}
output "vmware_private_clouds_nsxt_manager_endpoint" {
  description = "Map of nsxt_manager_endpoint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.nsxt_manager_endpoint }
}
output "vmware_private_clouds_nsxt_password" {
  description = "Map of nsxt_password values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.nsxt_password }
  sensitive   = true
}
output "vmware_private_clouds_provisioning_subnet_cidr" {
  description = "Map of provisioning_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.provisioning_subnet_cidr }
}
output "vmware_private_clouds_resource_group_name" {
  description = "Map of resource_group_name values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.resource_group_name }
}
output "vmware_private_clouds_sku_name" {
  description = "Map of sku_name values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.sku_name }
}
output "vmware_private_clouds_tags" {
  description = "Map of tags values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.tags }
}
output "vmware_private_clouds_vcenter_certificate_thumbprint" {
  description = "Map of vcenter_certificate_thumbprint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.vcenter_certificate_thumbprint }
}
output "vmware_private_clouds_vcenter_password" {
  description = "Map of vcenter_password values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.vcenter_password }
  sensitive   = true
}
output "vmware_private_clouds_vcsa_endpoint" {
  description = "Map of vcsa_endpoint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.vcsa_endpoint }
}
output "vmware_private_clouds_vmotion_subnet_cidr" {
  description = "Map of vmotion_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.vmotion_subnet_cidr }
}

