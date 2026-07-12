data "azurerm_key_vault_secret" "nsxt_password" {
  for_each     = { for k, v in var.vmware_private_clouds : k => v if v.nsxt_password_key_vault_id != null && v.nsxt_password_key_vault_secret_name != null }
  name         = each.value.nsxt_password_key_vault_secret_name
  key_vault_id = each.value.nsxt_password_key_vault_id
}
data "azurerm_key_vault_secret" "vcenter_password" {
  for_each     = { for k, v in var.vmware_private_clouds : k => v if v.vcenter_password_key_vault_id != null && v.vcenter_password_key_vault_secret_name != null }
  name         = each.value.vcenter_password_key_vault_secret_name
  key_vault_id = each.value.vcenter_password_key_vault_id
}
resource "azurerm_vmware_private_cloud" "vmware_private_clouds" {
  for_each = var.vmware_private_clouds

  location                    = each.value.location
  name                        = each.value.name
  network_subnet_cidr         = each.value.network_subnet_cidr
  resource_group_name         = each.value.resource_group_name
  sku_name                    = each.value.sku_name
  internet_connection_enabled = each.value.internet_connection_enabled
  nsxt_password               = each.value.nsxt_password != null ? each.value.nsxt_password : try(data.azurerm_key_vault_secret.nsxt_password[each.key].value, null)
  tags                        = each.value.tags
  vcenter_password            = each.value.vcenter_password != null ? each.value.vcenter_password : try(data.azurerm_key_vault_secret.vcenter_password[each.key].value, null)

  management_cluster {
    size = each.value.management_cluster.size
  }
}

