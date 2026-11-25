resource "aiven_grafana" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  cmk_id                  = var.cmk_id
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  grafana_user_config {
    alerting_enabled                  = var.alerting_enabled
    alerting_error_or_timeout         = var.alerting_error_or_timeout
    alerting_max_annotations_to_keep  = var.alerting_max_annotations_to_keep
    alerting_nodata_or_nullvalues     = var.alerting_nodata_or_nullvalues
    allow_embedding                   = var.allow_embedding
    cookie_samesite                   = var.cookie_samesite
    custom_domain                     = var.custom_domain
    dashboard_scenes_enabled          = var.dashboard_scenes_enabled
    dashboards_min_refresh_interval   = var.dashboards_min_refresh_interval
    dashboards_versions_to_keep       = var.dashboards_versions_to_keep
    dataproxy_send_user_header        = var.dataproxy_send_user_header
    dataproxy_timeout                 = var.dataproxy_timeout
    disable_gravatar                  = var.disable_gravatar
    editors_can_admin                 = var.editors_can_admin
    google_analytics_ua_id            = var.google_analytics_ua_id
    grafana_version                   = var.grafana_version
    metrics_disable_total_stats       = var.metrics_disable_total_stats
    metrics_enabled                   = var.metrics_enabled
    oauth_allow_insecure_email_lookup = var.oauth_allow_insecure_email_lookup
    project_to_fork_from              = var.project_to_fork_from
    recovery_basebackup_name          = var.recovery_basebackup_name
    service_log                       = var.service_log
    service_to_fork_from              = var.service_to_fork_from
    unified_alerting_enabled          = var.unified_alerting_enabled
    user_auto_assign_org              = var.user_auto_assign_org
    user_auto_assign_org_role         = var.user_auto_assign_org_role
    viewers_can_edit                  = var.viewers_can_edit
    wal                               = var.wal

    dynamic "ip_filter_object" {
      for_each = var.ip_filter_object
      content {
        network     = lookup(ip_filter_object.value, "network")
        description = lookup(ip_filter_object.value, "description", null)
      }
    }

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

    dynamic "auth_generic_oauth" {
      for_each = var.auth_generic_oauth
      content {
        allow_sign_up         = lookup(auth_generic_oauth.value, "allow_sign_up", null)
        allowed_domains       = lookup(auth_generic_oauth.value, "allowed_domains", null)
        allowed_organizations = lookup(auth_generic_oauth.value, "allowed_organizations", null)
        api_url               = lookup(auth_generic_oauth.value, "api_url", null)
        auth_url              = lookup(auth_generic_oauth.value, "auth_url", null)
        auto_login            = lookup(auth_generic_oauth.value, "auto_login", null)
        client_id             = lookup(auth_generic_oauth.value, "client_id", null)
        client_secret         = lookup(auth_generic_oauth.value, "client_secret", null)
        name                  = lookup(auth_generic_oauth.value, "name", null)
        scopes                = lookup(auth_generic_oauth.value, "scopes", null)
        token_url             = lookup(auth_generic_oauth.value, "token_url", null)
        use_refresh_token     = lookup(auth_generic_oauth.value, "use_refresh_token", null)
      }
    }

    dynamic "auth_github" {
      for_each = var.auth_github
      content {
        allow_sign_up         = lookup(auth_github.value, "allow_sign_up", null)
        allowed_organizations = lookup(auth_github.value, "allowed_organizations", null)
        auto_login            = lookup(auth_github.value, "auto_login", null)
        client_id             = lookup(auth_github.value, "client_id", null)
        client_secret         = lookup(auth_github.value, "client_secret", null)
        skip_org_role_sync    = lookup(auth_github.value, "skip_org_role_sync", null)
        team_ids              = lookup(auth_github.value, "team_ids", null)
      }
    }

    dynamic "auth_gitlab" {
      for_each = var.auth_gitlab
      content {
        allow_sign_up  = lookup(auth_gitlab.value, "allow_sign_up", null)
        allowed_groups = lookup(auth_gitlab.value, "allowed_groups", null)
        api_url        = lookup(auth_gitlab.value, "api_url", null)
        auth_url       = lookup(auth_gitlab.value, "auth_url", null)
        client_id      = lookup(auth_gitlab.value, "client_id", null)
        client_secret  = lookup(auth_gitlab.value, "client_secret", null)
        token_url      = lookup(auth_gitlab.value, "token_url", null)
      }
    }

    dynamic "auth_google" {
      for_each = var.auth_google
      content {
        allow_sign_up   = lookup(auth_google.value, "allow_sign_up", null)
        allowed_domains = lookup(auth_google.value, "allowed_domains", null)
        client_id       = lookup(auth_google.value, "client_id", null)
        client_secret   = lookup(auth_google.value, "client_secret", null)
      }
    }

    dynamic "date_formats" {
      for_each = var.date_formats
      content {
        default_timezone = lookup(date_formats.value, "default_timezone", null)
        full_date        = lookup(date_formats.value, "full_date", null)
        interval_day     = lookup(date_formats.value, "interval_day", null)
        interval_hour    = lookup(date_formats.value, "interval_hour", null)
        interval_minute  = lookup(date_formats.value, "interval_minute", null)
        interval_second  = lookup(date_formats.value, "interval_second", null)
        interval_year    = lookup(date_formats.value, "interval_year", null)
      }
    }

    dynamic "external_image_storage" {
      for_each = var.external_image_storage
      content {
        access_key = lookup(external_image_storage.value, "access_key", null)
        bucket_url = lookup(external_image_storage.value, "bucket_url", null)
        provider   = lookup(external_image_storage.value, "provider", null)
        secret_key = lookup(external_image_storage.value, "secret_key", null)
      }
    }

    dynamic "smtp_server" {
      for_each = var.smtp_server
      content {
        from_address    = lookup(smtp_server.value, "from_address", null)
        from_name       = lookup(smtp_server.value, "from_name", null)
        host            = lookup(smtp_server.value, "host", null)
        password        = lookup(smtp_server.value, "password", null)
        port            = lookup(smtp_server.value, "port", null)
        skip_verify     = lookup(smtp_server.value, "skip_verify", null)
        starttls_policy = lookup(smtp_server.value, "starttls_policy", null)
        username        = lookup(smtp_server.value, "username", null)
      }
    }
  }

  dynamic "service_integrations" {
    for_each = var.service_integrations
    content {
      integration_type    = lookup(service_integrations.value, "integration_type", null)
      source_service_name = lookup(service_integrations.value, "source_service_name", null)
    }
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }

  dynamic "tech_emails" {
    for_each = var.tech_emails
    content {
      email = lookup(tech_emails.value, "email", null)
    }
  }
}
