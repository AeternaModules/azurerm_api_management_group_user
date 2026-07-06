output "api_management_group_users" {
  description = "All api_management_group_user resources"
  value       = azurerm_api_management_group_user.api_management_group_users
}
output "api_management_group_users_api_management_name" {
  description = "List of api_management_name values across all api_management_group_users"
  value       = [for k, v in azurerm_api_management_group_user.api_management_group_users : v.api_management_name]
}
output "api_management_group_users_group_name" {
  description = "List of group_name values across all api_management_group_users"
  value       = [for k, v in azurerm_api_management_group_user.api_management_group_users : v.group_name]
}
output "api_management_group_users_resource_group_name" {
  description = "List of resource_group_name values across all api_management_group_users"
  value       = [for k, v in azurerm_api_management_group_user.api_management_group_users : v.resource_group_name]
}
output "api_management_group_users_user_id" {
  description = "List of user_id values across all api_management_group_users"
  value       = [for k, v in azurerm_api_management_group_user.api_management_group_users : v.user_id]
}

