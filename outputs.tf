output "behaviors_lookup_id" {
  description = "Map of id values across all behaviors_lookup, keyed the same as var.behaviors_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_behaviors.behaviors_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "behaviors_lookup_behaviors" {
  description = "Map of behaviors values across all behaviors_lookup, keyed the same as var.behaviors_lookup except keys with no behaviors are omitted"
  value       = { for k, v in data.okta_behaviors.behaviors_lookup : k => v.behaviors if v.behaviors != null && length(v.behaviors) > 0 }
}
output "behaviors_lookup_q" {
  description = "Map of q values across all behaviors_lookup, keyed the same as var.behaviors_lookup except keys with no q are omitted"
  value       = { for k, v in data.okta_behaviors.behaviors_lookup : k => v.q if v.q != null && length(v.q) > 0 }
}

