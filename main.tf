resource "google_access_context_manager_egress_policy" "access_context_manager_egress_policies" {
  for_each = var.access_context_manager_egress_policies

  egress_policy_name = each.value.egress_policy_name
  resource           = each.value.resource
  deletion_policy    = each.value.deletion_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

