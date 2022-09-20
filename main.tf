resource "aiven_grafana" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  grafana_user_config {
    alerting_enabled                 = var.alerting_enabled
    alerting_error_or_timeout        = var.alerting_error_or_timeout
    alerting_max_annotations_to_keep = var.alerting_max_annotations_to_keep
    alerting_nodata_or_nullvalues    = var.alerting_nodata_or_nullvalues
    allow_embedding                  = var.allow_embedding
    cookie_samesite                  = var.cookie_samesite
    custom_domain                    = var.custom_domain
    dashboards_min_refresh_interval  = var.dashboards_min_refresh_interval
    dashboards_versions_to_keep      = var.dashboards_versions_to_keep
    dataproxy_send_user_header       = var.dataproxy_send_user_header
    dataproxy_timeout                = var.dataproxy_timeout
    disable_gravatar                 = var.disable_gravatar
    editors_can_admin                = var.editors_can_admin
    google_analytics_ua_id           = var.google_analytics_ua_id
    ip_filter                        = var.ip_filter
    metrics_enabled                  = var.metrics_enabled
    project_to_fork_from             = var.project_to_fork_from
    recovery_basebackup_name         = var.recovery_basebackup_name
    service_to_fork_from             = var.service_to_fork_from
    user_auto_assign_org             = var.user_auto_assign_org
    user_auto_assign_org_role        = var.user_auto_assign_org_role
    viewers_can_edit                 = var.viewers_can_edit

    public_access {
      grafana = var.public_access_grafana
    }

    private_access {
      grafana = var.private_access_grafana
    }

    privatelink_access {
      grafana = var.privatelink_grafana
    }

    dynamic "auth_azuread" {
      for_each = var.auth_azuread
      content {
        allow_sign_up   = lookup(auth_azuread.value, "allow_sign_up", null)
        allowed_domains = lookup(auth_azuread.value, "allowed_domains", null)
        allowed_groups  = lookup(auth_azuread.value, "allowed_groups", null)
        auth_url        = lookup(auth_azuread.value, "auth_url", null)
        client_id       = lookup(auth_azuread.value, "client_id", null)
        client_secret   = lookup(auth_azuread.value, "client_secret", null)
        token_url       = lookup(auth_azuread.value, "token_url", null)
      }
    }

    dynamic "auth_github" {
      for_each = var.auth_github
      content {
        allow_sign_up         = lookup(auth_github.value, "allow_sign_up", null)
        allowed_organizations = lookup(auth_github.value, "allowed_organizations", null)
        client_id             = lookup(auth_github.value, "client_id", null)
        client_secret         = lookup(auth_github.value, "client_secret", null)
        team_ids              = lookup(auth_github.value, "team_ids", null)
      }
    }
  }
  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }
}