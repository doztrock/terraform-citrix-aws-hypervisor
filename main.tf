resource "citrix_aws_hypervisor" "this" {

  name       = var.name
  zone       = var.zone
  api_key    = var.api_key
  secret_key = var.secret_key
  region     = var.region

  metadata = var.metadata
  scopes   = var.scopes

}
