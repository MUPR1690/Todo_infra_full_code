variable "infrarg" {
    type = map(object({
        rg_name     = string
        location    = string
    }))
}
variable "database" {
    type = map(object({
        rg_name     = string
        location    = string
        database_name = string
        server_id   = string
        collation   = string
        license_type = string


    }))
}
variable "server" {
    type = map(object({
        rg_name        = string
        location       = string
        server_name    = string
        version        = string
        admin_username = string
        admin_password = string
    }))
  
}
variable "pip" {
  type = map(object({
    rg_name            = string
    location           = string
    public_ip_name     = string
    allocation_method  = string
  }))
  
}
variable "nic" {
  type = map(object({
    nic_name             = string
    location             = string
    rg_name              = string
    ip_config_name       = string
    subnet_id            = string
    private_ip_allocation = string
  }))
}
variable "vms" {
  type = map(object({
    rg_name     = string
    location    = string
    vm_name     = string
    vm_size     = string
    admin_username = string
    admin_password = string
    network_interface_id = string
    }))
  }
  
variable "infranet" {
  type = map(object({
    rg_name          = string
    location         = string
    vnet_name        = string
    address_space    = list(string)
    dns_servers     = list(string)

   subnet_name            = list(object({
    name             = string
    address_prefixes = list(string)
  }))
  })) 
  
}
variable "nsg" {
  type = list(object({
    name     = string
    location = string
    rg_name  = string
  }))
}

