variable "access_context_manager_egress_policies" {
  description = <<EOT
Map of access_context_manager_egress_policies, attributes below
Required:
    - egress_policy_name
    - resource
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    egress_policy_name = string
    resource           = string
    deletion_policy    = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

