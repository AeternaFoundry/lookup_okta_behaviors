data "okta_behaviors" "behaviors_lookup" {
  for_each = var.behaviors_lookup

  q = each.value.q
}

