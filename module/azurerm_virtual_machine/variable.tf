variable "vms" {
  type = map(object({
    vm_name        = string
    rg_name        = string
    location       = string
    vm_size        = string
    admin_username = string
    admin_password = string
    network_interface_id = string
  }))
}

