variable "managed_api_lookup" {
  description = <<EOT
Map of managed_api_lookup, attributes below
Required:
    - location
    - name
EOT

  type = map(object({
    location = string
    name     = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.managed_api_lookup : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

