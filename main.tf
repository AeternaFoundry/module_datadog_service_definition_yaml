resource "datadog_service_definition_yaml" "service_definition_yamls" {
  for_each = var.service_definition_yamls

  service_definition = each.value.service_definition
}

