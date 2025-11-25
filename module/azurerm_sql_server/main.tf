
resource "azurerm_mssql_server" "infraserver" {
    for_each = var.server
  name                         = each.value.server_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = each.value.admin_username
  administrator_login_password = each.value.admin_password
}
