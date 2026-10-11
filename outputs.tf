output "service_definition_yamls_id" {
  description = "Map of id values across all service_definition_yamls, keyed the same as var.service_definition_yamls except keys with no id are omitted"
  value       = { for k, v in datadog_service_definition_yaml.service_definition_yamls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_definition_yamls_service_definition" {
  description = "Map of service_definition values across all service_definition_yamls, keyed the same as var.service_definition_yamls except keys with no service_definition are omitted"
  value       = { for k, v in datadog_service_definition_yaml.service_definition_yamls : k => v.service_definition if v.service_definition != null && length(v.service_definition) > 0 }
}

