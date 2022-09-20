# Aiven Grafana Terraform module

Terraform module which creates Aiven Grafana resources

## Usage

```hcl
module "grafana" {
  source       = "tf-cloud-modules/grafana/aiven"
  project      = "test"
  service_name = "test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_grafana.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/grafana) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alerting_enabled"></a> [alerting\_enabled](#input\_alerting\_enabled) | Enable or disable Grafana alerting functionality. | `string` | `""` | no |
| <a name="input_alerting_error_or_timeout"></a> [alerting\_error\_or\_timeout](#input\_alerting\_error\_or\_timeout) | Default error or timeout setting for new alerting rules. | `string` | `""` | no |
| <a name="input_alerting_max_annotations_to_keep"></a> [alerting\_max\_annotations\_to\_keep](#input\_alerting\_max\_annotations\_to\_keep) | Max number of alert annotations that Grafana stores. 0 (default) keeps all alert annotations. | `string` | `""` | no |
| <a name="input_alerting_nodata_or_nullvalues"></a> [alerting\_nodata\_or\_nullvalues](#input\_alerting\_nodata\_or\_nullvalues) | Default value for 'no data or null values' for new alerting rules. | `string` | `""` | no |
| <a name="input_allow_embedding"></a> [allow\_embedding](#input\_allow\_embedding) | Allow embedding Grafana dashboards with iframe/frame/object/embed tags. Disabled by default to limit impact of clickjacking. | `string` | `""` | no |
| <a name="input_auth_azuread"></a> [auth\_azuread](#input\_auth\_azuread) | Azure AD OAuth integration. | `list(any)` | `[]` | no |
| <a name="input_auth_generic_oauth"></a> [auth\_generic\_oauth](#input\_auth\_generic\_oauth) | Generic OAuth integration. | `list(any)` | `[]` | no |
| <a name="input_auth_github"></a> [auth\_github](#input\_auth\_github) | Github Auth integration. | `list(any)` | `[]` | no |
| <a name="input_auth_gitlab"></a> [auth\_gitlab](#input\_auth\_gitlab) | GitLab Auth integration. | `list(any)` | `[]` | no |
| <a name="input_auth_google"></a> [auth\_google](#input\_auth\_google) | Google Auth integration. | `list(any)` | `[]` | no |
| <a name="input_cloud_name"></a> [cloud\_name](#input\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. | `string` | `"aws-us-east-1"` | no |
| <a name="input_cookie_samesite"></a> [cookie\_samesite](#input\_cookie\_samesite) | Cookie SameSite attribute: 'strict' prevents sending cookie for cross-site requests, effectively disabling direct linking from other sites to Grafana. 'lax' is the default value. | `string` | `""` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_custom_domain"></a> [custom\_domain](#input\_custom\_domain) | Custom domain. | `string` | `""` | no |
| <a name="input_dashboards_min_refresh_interval"></a> [dashboards\_min\_refresh\_interval](#input\_dashboards\_min\_refresh\_interval) | Minimum refresh interval. | `string` | `""` | no |
| <a name="input_dashboards_versions_to_keep"></a> [dashboards\_versions\_to\_keep](#input\_dashboards\_versions\_to\_keep) | Dashboard versions to keep per dashboard. | `string` | `""` | no |
| <a name="input_dataproxy_send_user_header"></a> [dataproxy\_send\_user\_header](#input\_dataproxy\_send\_user\_header) | Send 'X-Grafana-User' header to data source. | `string` | `""` | no |
| <a name="input_dataproxy_timeout"></a> [dataproxy\_timeout](#input\_dataproxy\_timeout) | Timeout for data proxy requests in seconds. | `string` | `""` | no |
| <a name="input_disable_gravatar"></a> [disable\_gravatar](#input\_disable\_gravatar) | Set to true to disable gravatar. Defaults to false (gravatar is enabled). | `string` | `""` | no |
| <a name="input_editors_can_admin"></a> [editors\_can\_admin](#input\_editors\_can\_admin) | Editors can manage folders, teams and dashboards created by them. | `string` | `""` | no |
| <a name="input_google_analytics_ua_id"></a> [google\_analytics\_ua\_id](#input\_google\_analytics\_ua\_id) | Google Analytics ID. | `string` | `""` | no |
| <a name="input_ip_filter"></a> [ip\_filter](#input\_ip\_filter) | IP filter. | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_metrics_enabled"></a> [metrics\_enabled](#input\_metrics\_enabled) | Enable Grafana /metrics endpoint. | `string` | `""` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Defines what kind of computing resources are allocated for the service. | `string` | `"startup-1"` | no |
| <a name="input_private_access_grafana"></a> [private\_access\_grafana](#input\_private\_access\_grafana) | Allow clients to connect to Grafana with a DNS name that always resolves to the service's private IP addresses. | `bool` | `false` | no |
| <a name="input_privatelink_grafana"></a> [privatelink\_grafana](#input\_privatelink\_grafana) | Enable Grafana. | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_project_to_fork_from"></a> [project\_to\_fork\_from](#input\_project\_to\_fork\_from) | Name of another project to fork a service from. | `string` | `""` | no |
| <a name="input_project_vpc_id"></a> [project\_vpc\_id](#input\_project\_vpc\_id) | Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC. | `string` | `null` | no |
| <a name="input_public_access_grafana"></a> [public\_access\_grafana](#input\_public\_access\_grafana) | Allow clients to connect to Grafana from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_recovery_basebackup_name"></a> [recovery\_basebackup\_name](#input\_recovery\_basebackup\_name) | Name of the basebackup to restore in forked service. | `string` | `""` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_service_to_fork_from"></a> [service\_to\_fork\_from](#input\_service\_to\_fork\_from) | Name of another service to fork from. | `string` | `""` | no |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of the service tags. | `list(any)` | `[]` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |
| <a name="input_user_auto_assign_org"></a> [user\_auto\_assign\_org](#input\_user\_auto\_assign\_org) | Auto-assign new users on signup to main organization. | `string` | `""` | no |
| <a name="input_user_auto_assign_org_role"></a> [user\_auto\_assign\_org\_role](#input\_user\_auto\_assign\_org\_role) | Set role for new signups. | `string` | `""` | no |
| <a name="input_viewers_can_edit"></a> [viewers\_can\_edit](#input\_viewers\_can\_edit) | Users with view-only permission can edit but not save dashboards. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_name"></a> [cloud\_name](#output\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. |
| <a name="output_components"></a> [components](#output\_components) | Service component information objects. |
| <a name="output_disk_space_cap"></a> [disk\_space\_cap](#output\_disk\_space\_cap) | The maximum disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_default"></a> [disk\_space\_default](#output\_disk\_space\_default) | The default disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_step"></a> [disk\_space\_step](#output\_disk\_space\_step) | The default disk space step of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_grafana_user_config"></a> [grafana\_user\_config](#output\_grafana\_user\_config) | Grafana user configurable settings. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_maintenance_window_dow"></a> [maintenance\_window\_dow](#output\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. |
| <a name="output_maintenance_window_time"></a> [maintenance\_window\_time](#output\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. |
| <a name="output_plan"></a> [plan](#output\_plan) | Defines what kind of computing resources are allocated for the service. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_host"></a> [service\_host](#output\_service\_host) | The hostname of the service. |
| <a name="output_service_integrations"></a> [service\_integrations](#output\_service\_integrations) | Service integrations to specify when creating a service. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
| <a name="output_service_password"></a> [service\_password](#output\_service\_password) | Password used for connecting to the service, if applicable. |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | The port of the service. |
| <a name="output_service_type"></a> [service\_type](#output\_service\_type) | Aiven internal service type code. |
| <a name="output_service_uri"></a> [service\_uri](#output\_service\_uri) | URI for connecting to the service. |
| <a name="output_service_username"></a> [service\_username](#output\_service\_username) | Username used for connecting to the service. |
| <a name="output_static_ips"></a> [static\_ips](#output\_static\_ips) | Static IPs that are going to be associated with this service. |
<!-- END_TF_DOCS -->