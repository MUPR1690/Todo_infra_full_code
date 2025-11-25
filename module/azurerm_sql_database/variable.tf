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