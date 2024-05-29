#---------------------------------------------------
# naming_resource_module | main.tf
#---------------------------------------------------

locals {
  # If resource_type "virtual_machine" then append "vm-" to the front of "base_name" and "-00" to the back. Truncate "var.base_name" if its length > max_var_length.
  prefix     = "vm-"
  suffix     = "-00"
  max_length = 15

  # Det the max allowed length for var.base_name
  max_var_length = local.max_length - length(local.prefix) - length(local.suffix)


  resource_name = {
    "virtual_machine" =  length(var.base_name) > local.max_var_length ? "${local.prefix}${substr(var.base_name, 0, local.max_var_length)}${local.suffix}" : "${local.prefix}${var.base_name}${local.suffix}"
    "key_vault"       =  "kv-${lower(var.base_name)}"                    # append "kv-" to the front of "base_name" and then set all characters to lower case.
    "storage_account" =  "sa-${lower(replace(var.base_name, "-", ""))}"  # append "sa" to the front of "base_name and then remove all "-" from the name and then set all characters to lower case.
  }
}