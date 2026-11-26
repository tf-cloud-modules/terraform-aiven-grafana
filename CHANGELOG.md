# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- Pin the aiven/aiven provider to the tested version 4.66.0.

## [2.1.0] - 2026-11-25

### Added
- Add `cmk_id` variable for bring your own key (BYOK) encryption support.
- Add `tech_emails` variable for technical contact email addresses.
- Add new `grafana_user_config` variables: `dashboard_scenes_enabled`, `grafana_version`, `metrics_disable_total_stats`, `oauth_allow_insecure_email_lookup`, `service_log`, `unified_alerting_enabled` and `wal`.
- Add `auto_login` and `use_refresh_token` options to the `auth_generic_oauth` block, and `auto_login` and `skip_org_role_sync` options to the `auth_github` block.
- Add `maintenance_window_enabled` output.
- Add `README.ru.md` with Russian translation.

### Changed
- Raise aiven/aiven provider constraint to `>= 4.66.0, < 5.0.0` (minimum version providing the new fields, validated with 4.66.0).

## [2.0.0] - 2023-03-24

### Changed
- **Breaking:** add aiven/aiven provider v4 support.

## [1.0.2] - 2023-03-24

### Fixed
- Lock aiven/aiven provider version to `< 4.0.0`.

## [1.0.1] - 2022-10-03

### Changed
- Rework examples to the one-variable approach.

## [1.0.0] - 2022-09-20

### Added
- Add `service_integrations` support.

## [0.13.0] - 2022-09-20

### Added
- Add `smtp_server` settings.

## [0.12.0] - 2022-09-20

### Added
- Add `external_image_storage` support.

## [0.11.0] - 2022-09-20

### Fixed
- Add `date_formats` support.

## [0.10.0] - 2022-09-20

### Fixed
- Add `auth_google` integration.

## [0.8.0] - 2022-09-20

### Fixed
- Add `auth_gitlab` integration.

## [0.7.0] - 2022-09-20

### Fixed
- Add `auth_generic_oauth` integration.

## [0.6.0] - 2022-09-20

### Fixed
- Add `auth_github` integration.

## [0.5.0] - 2022-08-20

### Added
- Add `auth_azuread` integration.

## [0.4.0] - 2022-08-19

### Added
- Add public/private/privatelink access blocks.

## [0.3.0] - 2022-08-19

### Added
- Add examples.

## [0.2.0] - 2022-08-19

### Added
- Add `grafana_user_config` support.

## [0.1.0] - 2022-08-19

### Added
- Initial release.

[Unreleased]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/2.1.0...HEAD
[2.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/2.0.0...2.1.0
[2.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/1.0.2...2.0.0
[1.0.2]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.13.0...1.0.0
[0.13.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.12.0...0.13.0
[0.12.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.11.0...0.12.0
[0.11.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.10.0...0.11.0
[0.10.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.8.0...0.10.0
[0.8.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.7.0...0.8.0
[0.7.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.6.0...0.7.0
[0.6.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.5.0...0.6.0
[0.5.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.4.0...0.5.0
[0.4.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-grafana/compare/a1d7e50...0.1.0
