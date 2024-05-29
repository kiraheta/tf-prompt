#---------------------------------------------------
# test_module | variables.tf
#---------------------------------------------------

variable "test_naming_resource_module_base_name" {
    type = string
    description = "base name for testing"
    default = "example-resource"
}

variable "test_naming_resource_module_resource_type" {
    type = string
    description = "Resource type for testing"
    default = "virtual_machine"
}

variable "test_parent_calling_module_resource_map" {
    type = map(string)
    description = "Resource map for testing"
    default = {
        "my-virtual-machine" = "virtual_machine"
        "my-KEY-vault"       = "key_vault"
        "my-STORAGE-account" = "storage_account"
    }
}