variable "api_management_group_users" {
  description = <<EOT
Map of api_management_group_users, attributes below
Required:
    - api_management_name
    - group_name
    - resource_group_name
    - user_id
EOT

  type = map(object({
    api_management_name = string
    group_name          = string
    resource_group_name = string
    user_id             = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_group_users : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_group_users : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_group_users : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

