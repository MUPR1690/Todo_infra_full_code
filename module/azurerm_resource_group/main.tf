resource "azurerm_resource_group" "infragroup" {
    for_each = var.infrarg
  name     = each.value.rg_name
  location = each.value.location
}