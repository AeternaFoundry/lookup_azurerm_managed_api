data "azurerm_managed_api" "managed_api_lookup" {
  for_each = var.managed_api_lookup

  location = each.value.location
  name     = each.value.name
}

