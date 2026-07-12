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
    internet_connection_enabled            = optional(bool) # Default: false
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
  # --- Unconfirmed validation candidates, derived from azurerm_vmware_private_cloud's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: network_subnet_cidr
  #   source:    validation.IsCIDR(...) - no translation rule yet, add one
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

