variable "resource_type" {
  type = string
  validation {
    condition = can(regex("^(virtual_machine|key_vault|storage_account)$", var.resource_type))
    error_message = "There was an error with the resource type parameter."
  }
}

variable "base_name" {
  type = string
}
