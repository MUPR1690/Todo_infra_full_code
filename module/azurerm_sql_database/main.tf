
resource "azurerm_mssql_database" "infradatabase" {
    for_each = var.database
  name         = each.value.database_name
  server_id    = each.value.server_id
  collation    = each.value.collation
  license_type = each.value.license_type
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"
}