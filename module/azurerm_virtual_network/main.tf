 resource "azurerm_virtual_network" "infranet" {
  for_each = var.infranet

  name                = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space
  dns_servers         = each.value.dns_servers

  dynamic "subnet" {
    for_each = each.value.subnet_name
    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
  }
}


 
