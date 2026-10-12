output "rgp_policies_id" {
  description = "Map of id values across all rgp_policies, keyed the same as var.rgp_policies except keys with no id are omitted"
  value       = { for k, v in vault_rgp_policy.rgp_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rgp_policies_enforcement_level" {
  description = "Map of enforcement_level values across all rgp_policies, keyed the same as var.rgp_policies except keys with no enforcement_level are omitted"
  value       = { for k, v in vault_rgp_policy.rgp_policies : k => v.enforcement_level if v.enforcement_level != null && length(v.enforcement_level) > 0 }
}
output "rgp_policies_name" {
  description = "Map of name values across all rgp_policies, keyed the same as var.rgp_policies except keys with no name are omitted"
  value       = { for k, v in vault_rgp_policy.rgp_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "rgp_policies_namespace" {
  description = "Map of namespace values across all rgp_policies, keyed the same as var.rgp_policies except keys with no namespace are omitted"
  value       = { for k, v in vault_rgp_policy.rgp_policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "rgp_policies_policy" {
  description = "Map of policy values across all rgp_policies, keyed the same as var.rgp_policies except keys with no policy are omitted"
  value       = { for k, v in vault_rgp_policy.rgp_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}

