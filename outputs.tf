output "id" {
  value       = "${local.id}"
  description = "Disambiguated ID"
}

output "name" {
  value       = "${local.name}"
  description = "Normalized name"
}

output "env" {
  value       = "${local.env}"
  description = "Normalized env"
}

output "namespace" {
  value       = "${local.namespace}"
  description = "Normalized namespace"
}

output "attributes" {
  value       = "${local.attributes}"
  description = "Normalized attributes"
}

output "tags" {
  value       = "${local.tags}"
  description = "Normalized Tag map"
}