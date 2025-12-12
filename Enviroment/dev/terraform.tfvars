infrarg = {
  "rg" = {
    rg_name  = "mupr1-rg-infra"
    location = "canadacentral"
    
  }
}
infranet = {
  "vnet" = {
    rg_name         = "mupr1-rg-infra"
    location        = "canadacentral"
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
    rg_name       = "mupr1-rg-infra"
    location      = "canadacentral"
    database_name = "mupr-sqldb12"
    server_id     = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr1-rg-infra/providers/Microsoft.Sql/servers/sqlserverinfamupr12"
    collation     = "SQL_Latin1_General_CP1_CI_AS"
    license_type  = "LicenseIncluded"
  }
}
server = {
  "sqlserver" = {
    rg_name        = "mupr1-rg-infra"
    location       = "canadacentral"
    server_name    = "sqlserverinfamupr12"
    version        = "12.0"
    admin_username = "sqladminuser"
    admin_password = "YourStrongP@ssw0rd!"
  }
}
pip = {
  "publicip" = {
    rg_name           = "mupr1-rg-infra"
    location          = "canadacentral"
    public_ip_name    = "mupr1-public-ip-frontend"
    allocation_method = "Static"
  },
  "publicip1" = {
    rg_name           = "mupr1-rg-infra"
    location          = "canadacentral"
    public_ip_name    = "mupr1-public-ip-backend"
    allocation_method = "Static"
  }
  }

nic = {
  "nic1" = {
    nic_name             = "mupr1-nic-1"
    location             = "canadacentral"
    rg_name              = "mupr1-rg-infra"
    ip_config_name       = "testconfiguration1"
    subnet_id            = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr1-rg-infra/providers/Microsoft.Network/virtualNetworks/mupr-vnet/subnets/frontend-subnet"
    private_ip_allocation = "Dynamic"
  },
  "nic2" = {
    nic_name             = "mupr1-nic-backend"
    location             = "canadacentral"
    rg_name              = "mupr1-rg-infra"
    ip_config_name       = "testconfiguration1"
    subnet_id            = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr1-rg-infra/providers/Microsoft.Network/virtualNetworks/mupr-vnet/subnets/backend-subnet"
    private_ip_allocation = "Dynamic"
  }
}
vms = {
  "vm1" = {
    vm_name              = "mupr1-vm-frontend"
    rg_name              = "mupr1-rg-infra"
    location             = "canadacentral"
    vm_size              = "Standard_B1s"
    admin_username       = "vmadminuser"
    admin_password = "mupuvm@1234"
    network_interface_id = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr1-rg-infra/providers/Microsoft.Network/networkInterfaces/mupr1-nic-1"
  },
  "vm3" = {
    vm_name              = "mupr1-vm-backend"
    rg_name              = "mupr1-rg-infra"
    location             = "canadacentral"
    vm_size              = "Standard_B1s"
    admin_username       = "vmadminuser"
    admin_password = "mupuvm@1234"
    network_interface_id = "/subscriptions/12070104-5366-47e7-ae69-d5a2bd98c79e/resourceGroups/mupr1-rg-infra/providers/Microsoft.Network/networkInterfaces/mupr1-nic-backend"
  }
}

nsg = [
  {
    name     = "mpnsg1-frontend"
    location = "canadacentral"
    rg_name  = "mupr1-rg-infra"
  },
  {
    name     = "mpnsg1-backend"
    location = "canadacentral"
    rg_name  = "mupr1-rg-infra"
  }
]
