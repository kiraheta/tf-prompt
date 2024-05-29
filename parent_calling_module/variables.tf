#---------------------------------------------------
# parent_calling_module | variables.tf
#---------------------------------------------------

variable "resource_map" {
    type = map(string)
    description = "Resource map for base name as key and resource type as value."
}