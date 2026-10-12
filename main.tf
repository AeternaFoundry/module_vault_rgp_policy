resource "vault_rgp_policy" "rgp_policies" {
  for_each = var.rgp_policies

  enforcement_level = each.value.enforcement_level
  name              = each.value.name
  policy            = each.value.policy
  namespace         = each.value.namespace
}

