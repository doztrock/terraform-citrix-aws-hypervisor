data "citrix_zone" "this" {
  name = var.zone
}

data "citrix_admin_scope" "this" {
  for_each = var.scopes
  name     = each.key
}

module "aws-hypervisor" {

  source = "../.."

  name       = var.name
  zone       = data.citrix_zone.this.id
  api_key    = var.api_key
  secret_key = var.secret_key
  region     = var.region

  metadata = [
    {
      name  = "Account"
      value = "0123456789"
    },
    {
      name  = "Environment"
      value = "Production"
    }
  ]

  scopes = [for scope in data.citrix_admin_scope.this : scope.id]

}
