#---------------------------------------------------
# parent_calling_module | outputs.tf
#---------------------------------------------------

output "resource_names" {
    description = "Generated resource_names based from base_names and resource_types."
    value = module.naming_resource
}