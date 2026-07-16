output "api_management_group_users_id" {
  description = "Map of id values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_group_users_api_management_name" {
  description = "Map of api_management_name values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_group_users_group_name" {
  description = "Map of group_name values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.group_name if v.group_name != null && length(v.group_name) > 0 }
}
output "api_management_group_users_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "api_management_group_users_user_id" {
  description = "Map of user_id values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

