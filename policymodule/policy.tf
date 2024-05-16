# Provision the alert policy.
resource "newrelic_alert_policy" "policy_with_count" {
  count = length(var.policy_names_with_count)
  name                = var.policy_names_with_count[count.index]
  incident_preference = "PER_POLICY"
}

resource "newrelic_alert_policy" "policy_with_foreach" {
  for_each = var.policy_names_with_foreach
  name                = each.value
  incident_preference = "PER_POLICY"
}

data "newrelic_entity" "app" {
  name = "CEQ-ICT-DESKTOP-005"
  type = "HOST"
  domain = "INFRA"
}




