module "grafana" {
  source       = "../.."
  project      = "tf-cloud-modules"
  service_name = "test"

  tags = [
    {
      key   = "env"
      value = "test"
    }
  ]

  #   auth_azuread = [
  #     {
  #       allow_sign_up   = "true"
  #       allowed_domains = ["example.com"]
  #       allowed_groups  = ["test"]
  #       auth_url        = "https://example.com"
  #       client_id       = "12a34b56-789c-0d12-e3fa-b456789c0123"
  #       client_secret   = "some-secret"
  #       token_url       = "https://login.microsoftonline.com/a1bc2d34-5e67-8f89-01ab-c2345d6c78de/oauth2/v2.0/token"
  #     }
  #   ]
}