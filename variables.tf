variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "cloud_name" {
  description = "Defines where the cloud provider and region where the service is hosted in."
  type        = string
  default     = "aws-us-east-1"
}

variable "maintenance_window_dow" {
  description = "Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc."
  type        = string
  default     = "thursday"
}

variable "maintenance_window_time" {
  description = "Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format."
  type        = string
  default     = "01:00:00"
}

variable "plan" {
  description = "Defines what kind of computing resources are allocated for the service."
  type        = string
  default     = "startup-1"
}

variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "project_vpc_id" {
  description = "Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC."
  type        = string
  default     = null
}

variable "static_ips" {
  description = "Static IPs that are going to be associated with this service."
  type        = list(string)
  default     = []
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "tags" {
  description = "List of the service tags."
  type        = list(any)
  default     = []
}

variable "termination_protection" {
  description = "Prevents the service from being deleted."
  type        = bool
  default     = false
}

variable "alerting_enabled" {
  description = "Enable or disable Grafana alerting functionality."
  type        = bool
  default     = null
}

variable "alerting_error_or_timeout" {
  description = "Default error or timeout setting for new alerting rules."
  type        = string
  default     = null
}

variable "alerting_max_annotations_to_keep" {
  description = "Max number of alert annotations that Grafana stores. 0 (default) keeps all alert annotations."
  type        = number
  default     = null
}

variable "alerting_nodata_or_nullvalues" {
  description = "Default value for 'no data or null values' for new alerting rules."
  type        = string
  default     = null
}

variable "allow_embedding" {
  description = "Allow embedding Grafana dashboards with iframe/frame/object/embed tags. Disabled by default to limit impact of clickjacking."
  type        = bool
  default     = null
}

variable "cookie_samesite" {
  description = "Cookie SameSite attribute: 'strict' prevents sending cookie for cross-site requests, effectively disabling direct linking from other sites to Grafana. 'lax' is the default value."
  type        = string
  default     = null
}

variable "custom_domain" {
  description = "Custom domain."
  type        = string
  default     = null
}

variable "dashboards_min_refresh_interval" {
  description = "Minimum refresh interval."
  type        = string
  default     = null
}

variable "dashboards_versions_to_keep" {
  description = "Dashboard versions to keep per dashboard."
  type        = number
  default     = null
}

variable "dataproxy_send_user_header" {
  description = "Send 'X-Grafana-User' header to data source."
  type        = bool
  default     = null
}

variable "dataproxy_timeout" {
  description = "Timeout for data proxy requests in seconds."
  type        = number
  default     = null
}

variable "disable_gravatar" {
  description = "Set to true to disable gravatar. Defaults to false (gravatar is enabled)."
  type        = bool
  default     = null
}

variable "editors_can_admin" {
  description = "Editors can manage folders, teams and dashboards created by them."
  type        = bool
  default     = null
}

variable "google_analytics_ua_id" {
  description = "Google Analytics ID."
  type        = string
  default     = null
}

variable "metrics_enabled" {
  description = "Enable Grafana /metrics endpoint."
  type        = bool
  default     = null
}

variable "project_to_fork_from" {
  description = "Name of another project to fork a service from."
  type        = string
  default     = null
}

variable "recovery_basebackup_name" {
  description = "Name of the basebackup to restore in forked service."
  type        = string
  default     = null
}

variable "service_to_fork_from" {
  description = "Name of another service to fork from."
  type        = string
  default     = null
}

variable "user_auto_assign_org" {
  description = "Auto-assign new users on signup to main organization."
  type        = bool
  default     = null
}

variable "user_auto_assign_org_role" {
  description = "Set role for new signups."
  type        = string
  default     = null
}

variable "viewers_can_edit" {
  description = "Users with view-only permission can edit but not save dashboards."
  type        = bool
  default     = null
}

variable "public_access_grafana" {
  description = "Allow clients to connect to Grafana from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "private_access_grafana" {
  description = "Allow clients to connect to Grafana with a DNS name that always resolves to the service's private IP addresses."
  type        = bool
  default     = false
}

variable "privatelink_grafana" {
  description = "Enable Grafana."
  type        = bool
  default     = false
}

variable "auth_azuread" {
  description = "Azure AD OAuth integration."
  type        = list(any)
  default     = []
}

variable "auth_generic_oauth" {
  description = "Generic OAuth integration."
  type        = list(any)
  default     = []
}

variable "auth_github" {
  description = "Github Auth integration."
  type        = list(any)
  default     = []
}

variable "auth_gitlab" {
  description = "GitLab Auth integration."
  type        = list(any)
  default     = []
}

variable "auth_google" {
  description = "Google Auth integration."
  type        = list(any)
  default     = []
}

variable "date_formats" {
  description = "Grafana date format specifications."
  type        = list(any)
  default     = []
}

variable "external_image_storage" {
  description = "External image store settings."
  type        = list(any)
  default     = []
}

variable "smtp_server" {
  description = "SMTP server settings."
  type        = list(any)
  default     = []
}

variable "service_integrations" {
  description = "Service integrations to specify when creating a service."
  type        = list(any)
  default     = []
}

variable "ip_filter_object" {
  description = "Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'."
  type        = list(any)
  default = [
    {
      network = "0.0.0.0/0"
    }
  ]
}