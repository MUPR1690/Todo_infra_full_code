variable "nsg" {
    type = list(object({
      name = string
      location = string
      rg_name = string
    }))



  
}