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