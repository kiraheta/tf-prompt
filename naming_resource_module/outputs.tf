output "resource_name" {
    description = "Generated resource_name based from base_name and resource_type."
    value = local.resource_name[var.resource_type]
}