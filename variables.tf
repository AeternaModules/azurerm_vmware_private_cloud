variable "vmware_private_clouds" {
  description = <<EOT
Map of vmware_private_clouds, attributes below
Required:
    - location
    - name
    - network_subnet_cidr
    - resource_group_name
    - sku_name
    - management_cluster (block):
        - size (required)
Optional:
    - internet_connection_enabled
    - nsxt_password
    - nsxt_password_key_vault_id (alternative to nsxt_password - read from Key Vault instead)
    - nsxt_password_key_vault_secret_name (alternative to nsxt_password - read from Key Vault instead)
    - tags
    - vcenter_password
    - vcenter_password_key_vault_id (alternative to vcenter_password - read from Key Vault instead)
    - vcenter_password_key_vault_secret_name (alternative to vcenter_password - read from Key Vault instead)
EOT

  type = map(object({
    location                               = string
    name                                   = string
    network_subnet_cidr                    = string
    resource_group_name                    = string
    sku_name                               = string
    internet_connection_enabled            = optional(bool)
    nsxt_password                          = optional(string)
    nsxt_password_key_vault_id             = optional(string)
    nsxt_password_key_vault_secret_name    = optional(string)
    tags                                   = optional(map(string))
    vcenter_password                       = optional(string)
    vcenter_password_key_vault_id          = optional(string)
    vcenter_password_key_vault_secret_name = optional(string)
    management_cluster = object({
      size = number
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.vmware_private_clouds : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_private_clouds : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_private_clouds : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_private_clouds : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_private_clouds : (
        contains(["av20", "av36", "av36t", "av36p", "av36pt", "av48", "av48t", "av52", "av52t", "av64"], v.sku_name)
      )
    ])
    error_message = "must be one of: av20, av36, av36t, av36p, av36pt, av48, av48t, av52, av52t, av64"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_private_clouds : (
        v.management_cluster.size >= 3 && v.management_cluster.size <= 16
      )
    ])
    error_message = "must be between 3 and 16"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_private_clouds : (
        v.nsxt_password == null || (length(v.nsxt_password) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_private_clouds : (
        v.vcenter_password == null || (length(v.vcenter_password) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_private_clouds : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

