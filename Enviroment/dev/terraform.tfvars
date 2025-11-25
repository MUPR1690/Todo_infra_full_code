infrarg = {
  "rg" = {
    rg_name  = "mupr12-rg-infra"
    location = "centralindia"
    
  }
}
infranet = {
  "vnet" = {
    rg_name         = "mupr12-rg-infra"
    location        = "centralindia"
    vnet_name       = "mupr-vnet"
    address_space   = ["10.0.0.0/16"]
    dns_servers     = ["10.0.0.4", "10.0.0.5"]
subnet_name = [
       {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}
database = {
  "sqldb" = {
    rg_name       = "mupr12-rg-infra"
    location      = "centralindia"
    database_name = "mupr-sqldb121"
    server_id     = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr12-rg-infra/providers/Microsoft.Sql/servers/sqlserverinfamupr121"
    collation     = "SQL_Latin1_General_CP1_CI_AS"
    license_type  = "LicenseIncluded"
  }
}
server = {
  "sqlserver" = {
    rg_name        = "mupr12-rg-infra"
    location       = "centralindia"
    server_name    = "sqlserverinfamupr121"
    version        = "12.0"
    admin_username = "sqladminuser"
    admin_password = "YourStrongP@ssw0rd!"
  }
}
pip = {
  "publicip" = {
    rg_name           = "mupr12-rg-infra"
    location          = "centralindia"
    public_ip_name    = "mupr-public-ip-frontend"
    allocation_method = "Static"
  },
  "publicip1" = {
    rg_name           = "mupr12-rg-infra"
    location          = "centralindia"
    public_ip_name    = "mupr-public-ip-backend"
    allocation_method = "Static"
  }
  }

nic = {
  "nic1" = {
    nic_name             = "mupr-nic-1"
    location             = "centralindia"
    rg_name              = "mupr12-rg-infra"
    ip_config_name       = "testconfiguration1"
    subnet_id            = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr12-rg-infra/providers/Microsoft.Network/virtualNetworks/mupr-vnet/subnets/frontend-subnet"
    private_ip_allocation = "Dynamic"
  },
  "nic2" = {
    nic_name             = "mupr-nic-backend"
    location             = "centralindia"
    rg_name              = "mupr12-rg-infra"
    ip_config_name       = "testconfiguration1"
    subnet_id            = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr12-rg-infra/providers/Microsoft.Network/virtualNetworks/mupr-vnet/subnets/backend-subnet"
    private_ip_allocation = "Dynamic"
  }
}
vms = {
  "vm1" = {
    vm_name              = "mupr-vm-frontend"
    rg_name              = "mupr12-rg-infra"
    location             = "centralindia"
    vm_size              = "Standard_B1s"
    admin_username       = "vmadminuser"
    admin_password = "mupuvm@1234"
    network_interface_id = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr12-rg-infra/providers/Microsoft.Network/networkInterfaces/mupr-nic-1"
  },
  "vm3" = {
    vm_name              = "mupr-vm-backend"
    rg_name              = "mupr12-rg-infra"
    location             = "centralindia"
    vm_size              = "Standard_B1s"
    admin_username       = "vmadminuser"
    admin_password = "mupuvm@1234"
    network_interface_id = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr12-rg-infra/providers/Microsoft.Network/networkInterfaces/mupr-nic-backend"
  }
}

nsg = [
  {
    name     = "mpnsg-frontend"
    location = "centralindia"
    rg_name  = "mupr12-rg-infra"
  },
  {
    name     = "mpnsg-backend"
    location = "centralindia"
    rg_name  = "mupr12-rg-infra"
  }
]
