variable "pip" {
  type = map(object({
    rg_name            = string
    location           = string
    public_ip_name     = string
    allocation_method  = string
  }))
  
}