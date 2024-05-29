#---------------------------------------------------
# test_module | main.tf
#---------------------------------------------------

# Config req providers
terraform {
  required_providers {
    null = {
        source = "hashicorp/null"
        version = "3.2.2"
    }
  }
} 

# Test the naming resource module 
module "test_naming_resource_module" {
    source = "../naming_resource_module"

    base_name = var.test_naming_resource_module_base_name 
    resource_type = var.test_naming_resource_module_resource_type 
}

# Test the parent calling module 
module "test_parent_calling_module" {
    source = "../parent_calling_module"

    resource_map = var.test_parent_calling_module_resource_map
}

