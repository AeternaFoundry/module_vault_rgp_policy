variable "rgp_policies" {
  description = <<EOT
Map of rgp_policies, attributes below
Required:
    - enforcement_level
    - name
    - policy
Optional:
    - namespace
EOT

  type = map(object({
    enforcement_level = string
    name              = string
    policy            = string
    namespace         = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

