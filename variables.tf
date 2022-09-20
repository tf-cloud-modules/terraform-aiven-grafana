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
  type        = string
  default     = ""
}

variable "alerting_error_or_timeout" {
  description = "Default error or timeout setting for new alerting rules."
  type        = string
  default     = ""
}

variable "alerting_max_annotations_to_keep" {
  description = "Max number of alert annotations that Grafana stores. 0 (default) keeps all alert annotations."
  type        = string
  default     = ""
}

variable "alerting_nodata_or_nullvalues" {
  description = "Default value for 'no data or null values' for new alerting rules."
  type        = string
  default     = ""
}

variable "allow_embedding" {
  description = "Allow embedding Grafana dashboards with iframe/frame/object/embed tags. Disabled by default to limit impact of clickjacking."
  type        = string
  default     = ""
}

variable "cookie_samesite" {
  description = "Cookie SameSite attribute: 'strict' prevents sending cookie for cross-site requests, effectively disabling direct linking from other sites to Grafana. 'lax' is the default value."
  type        = string
  default     = ""
}

variable "custom_domain" {
  description = "Custom domain."
  type        = string
  default     = ""
}

variable "dashboards_min_refresh_interval" {
  description = "Minimum refresh interval."
  type        = string
  default     = ""
}

variable "dashboards_versions_to_keep" {
  description = "Dashboard versions to keep per dashboard."
  type        = string
  default     = ""
}

variable "dataproxy_send_user_header" {
  description = "Send 'X-Grafana-User' header to data source."
  type        = string
  default     = ""
}

variable "dataproxy_timeout" {
  description = "Timeout for data proxy requests in seconds."
  type        = string
  default     = ""
}

variable "disable_gravatar" {
  description = " Set to true to disable gravatar. Defaults to false (gravatar is enabled)."
  type        = string
  default     = ""
}

variable "editors_can_admin" {
  description = "Editors can manage folders, teams and dashboards created by them."
  type        = string
  default     = ""
}

variable "google_analytics_ua_id" {
  description = "Google Analytics ID."
  type        = string
  default     = ""
}

variable "ip_filter" {
  description = "IP filter."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "metrics_enabled" {
  description = "Enable Grafana /metrics endpoint."
  type        = string
  default     = ""
}

variable "project_to_fork_from" {
  description = "Name of another project to fork a service from."
  type        = string
  default     = ""
}

variable "recovery_basebackup_name" {
  description = "Name of the basebackup to restore in forked service."
  type        = string
  default     = ""
}

variable "service_to_fork_from" {
  description = "Name of another service to fork from."
  type        = string
  default     = ""
}

variable "user_auto_assign_org" {
  description = "Auto-assign new users on signup to main organization."
  type        = string
  default     = ""
}

variable "user_auto_assign_org_role" {
  description = "Set role for new signups."
  type        = string
  default     = ""
}

variable "viewers_can_edit" {
  description = "Users with view-only permission can edit but not save dashboards."
  type        = string
  default     = ""
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