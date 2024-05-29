#---------------------------------------------------
# parent_calling_module | main.tf
#---------------------------------------------------

module "naming_resource" {
  source = "../naming_resource_module"
  for_each = var.resource_map # Use for_each meta-arg for maps

  base_name = each.key 
  resource_type = each.value 
}