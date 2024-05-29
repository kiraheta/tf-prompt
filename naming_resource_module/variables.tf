#---------------------------------------------------
# naming_resource_module | variables.tf
#---------------------------------------------------

variable "base_name" {
    type = string
    description = "Resource base name."
    default = "BASE_name" # used for testing truncating logic
}

variable "resource_type" {
    type = string
    description = "Type of resource."
    default = "storage_account" # used for testing string manipulation logic

    # setup the "resource_type" to only allow the values of "virtual_machine", "key_vault", and "storage_account"
    validation {
      condition = contains(["virtual_machine", "key_vault", "storage_account"], var.resource_type)
      error_message = "The resource_type value must either be virtual_machine, key_vault, or storage_account. Please try again."
    }
}