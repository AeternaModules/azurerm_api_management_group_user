output "api_management_group_users_id" {
  description = "Map of id values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.id }
}
output "api_management_group_users_api_management_name" {
  description = "Map of api_management_name values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.api_management_name }
}
output "api_management_group_users_group_name" {
  description = "Map of group_name values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.group_name }
}
output "api_management_group_users_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.resource_group_name }
}
output "api_management_group_users_user_id" {
  description = "Map of user_id values across all api_management_group_users, keyed the same as var.api_management_group_users"
  value       = { for k, v in azurerm_api_management_group_user.api_management_group_users : k => v.user_id }
}

