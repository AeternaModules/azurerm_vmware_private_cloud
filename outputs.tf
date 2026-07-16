output "vmware_private_clouds_id" {
  description = "Map of id values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vmware_private_clouds_circuit" {
  description = "Map of circuit values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.circuit if v.circuit != null && length(v.circuit) > 0 }
}
output "vmware_private_clouds_hcx_cloud_manager_endpoint" {
  description = "Map of hcx_cloud_manager_endpoint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.hcx_cloud_manager_endpoint if v.hcx_cloud_manager_endpoint != null && length(v.hcx_cloud_manager_endpoint) > 0 }
}
output "vmware_private_clouds_internet_connection_enabled" {
  description = "Map of internet_connection_enabled values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.internet_connection_enabled if v.internet_connection_enabled != null }
}
output "vmware_private_clouds_location" {
  description = "Map of location values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.location if v.location != null && length(v.location) > 0 }
}
output "vmware_private_clouds_management_cluster" {
  description = "Map of management_cluster values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.management_cluster if v.management_cluster != null && length(v.management_cluster) > 0 }
}
output "vmware_private_clouds_management_subnet_cidr" {
  description = "Map of management_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.management_subnet_cidr if v.management_subnet_cidr != null && length(v.management_subnet_cidr) > 0 }
}
output "vmware_private_clouds_name" {
  description = "Map of name values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vmware_private_clouds_network_subnet_cidr" {
  description = "Map of network_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.network_subnet_cidr if v.network_subnet_cidr != null && length(v.network_subnet_cidr) > 0 }
}
output "vmware_private_clouds_nsxt_certificate_thumbprint" {
  description = "Map of nsxt_certificate_thumbprint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.nsxt_certificate_thumbprint if v.nsxt_certificate_thumbprint != null && length(v.nsxt_certificate_thumbprint) > 0 }
}
output "vmware_private_clouds_nsxt_manager_endpoint" {
  description = "Map of nsxt_manager_endpoint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.nsxt_manager_endpoint if v.nsxt_manager_endpoint != null && length(v.nsxt_manager_endpoint) > 0 }
}
output "vmware_private_clouds_nsxt_password" {
  description = "Map of nsxt_password values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.nsxt_password if v.nsxt_password != null && length(v.nsxt_password) > 0 }
  sensitive   = true
}
output "vmware_private_clouds_provisioning_subnet_cidr" {
  description = "Map of provisioning_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.provisioning_subnet_cidr if v.provisioning_subnet_cidr != null && length(v.provisioning_subnet_cidr) > 0 }
}
output "vmware_private_clouds_resource_group_name" {
  description = "Map of resource_group_name values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "vmware_private_clouds_sku_name" {
  description = "Map of sku_name values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "vmware_private_clouds_tags" {
  description = "Map of tags values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "vmware_private_clouds_vcenter_certificate_thumbprint" {
  description = "Map of vcenter_certificate_thumbprint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.vcenter_certificate_thumbprint if v.vcenter_certificate_thumbprint != null && length(v.vcenter_certificate_thumbprint) > 0 }
}
output "vmware_private_clouds_vcenter_password" {
  description = "Map of vcenter_password values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.vcenter_password if v.vcenter_password != null && length(v.vcenter_password) > 0 }
  sensitive   = true
}
output "vmware_private_clouds_vcsa_endpoint" {
  description = "Map of vcsa_endpoint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.vcsa_endpoint if v.vcsa_endpoint != null && length(v.vcsa_endpoint) > 0 }
}
output "vmware_private_clouds_vmotion_subnet_cidr" {
  description = "Map of vmotion_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = { for k, v in azurerm_vmware_private_cloud.vmware_private_clouds : k => v.vmotion_subnet_cidr if v.vmotion_subnet_cidr != null && length(v.vmotion_subnet_cidr) > 0 }
}

