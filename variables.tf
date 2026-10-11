variable "behaviors_lookup" {
  description = <<EOT
Map of behaviors_lookup, attributes below
Optional:
    - q
EOT

  type = map(object({
    q = optional(string)
  }))
}

