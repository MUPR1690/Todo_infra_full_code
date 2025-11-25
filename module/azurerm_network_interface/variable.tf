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