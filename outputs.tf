output "managed_api_lookup_id" {
  description = "Map of id values across all managed_api_lookup, keyed the same as var.managed_api_lookup"
  value       = { for k, v in data.azurerm_managed_api.managed_api_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_api_lookup_location" {
  description = "Map of location values across all managed_api_lookup, keyed the same as var.managed_api_lookup"
  value       = { for k, v in data.azurerm_managed_api.managed_api_lookup : k => v.location if v.location != null && length(v.location) > 0 }
}
output "managed_api_lookup_name" {
  description = "Map of name values across all managed_api_lookup, keyed the same as var.managed_api_lookup"
  value       = { for k, v in data.azurerm_managed_api.managed_api_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "managed_api_lookup_tags" {
  description = "Map of tags values across all managed_api_lookup, keyed the same as var.managed_api_lookup"
  value       = { for k, v in data.azurerm_managed_api.managed_api_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

