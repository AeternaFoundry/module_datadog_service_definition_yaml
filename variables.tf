variable "service_definition_yamls" {
  description = <<EOT
Map of service_definition_yamls, attributes below
Required:
    - service_definition
EOT

  type = map(object({
    service_definition = string
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

