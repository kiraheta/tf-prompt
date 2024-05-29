#---------------------------------------------------
# test_module | outputs.tf
#---------------------------------------------------

output "test_naming_resource_module" {
    description = "Gen resource name from the naming resource module test"
    value       = module.test_naming_resource_module.resource_name
}

output "test_parent_calling_module" {
    description = "Gen resource names from the parent calling module test"
    value       = module.test_parent_calling_module.resource_names
}