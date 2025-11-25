resource "azurerm_network_interface" "infranic" {
  for_each = var.nic

  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = each.value.ip_config_name
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = each.value.private_ip_allocation
  }
}
