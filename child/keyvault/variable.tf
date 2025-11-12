variable "keyvaults" {
  description = "A map of key vaults to create"
  type = map(object({
    name     = string
    location = string
    rg_name  = string
  }))
}
