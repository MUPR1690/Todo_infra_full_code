module "rg" {
  source = "../../Module/Azurerm_Resource_group"
  infrarg = var.infrarg
  
}
module "public_ip" {
    depends_on = [ module.rg ]
  source = "../../Module/Azurerm_Public_Ip"
  pip = var.pip
}
module "sql_server" {
    depends_on = [ module.rg ]
  source = "../../module/azurerm_sql_server"
  server = var.server
}
module "sql_database" {
    depends_on = [ module.sql_server ]
  source = "../../module/azurerm_sql_database"
  database = var.database
}
module "vet" {
    depends_on = [ module.rg ]
  source = "../../Module/Azurerm_Virtual_Network"
  infranet = var.infranet
  
}
module "nic" {
    depends_on = [ module.vet ]
    source = "../../Module/Azurerm_Network_Interface"
    nic = var.nic
  
}
module "vm" {
    source = "../../Module/Azurerm_Virtual_Machine"
    vms = var.vms
  
}
module "nsg" {
  depends_on = [ module.rg ]
  source = "../../module/azurerm_network_security_group"
  nsg = var.nsg

  
}