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