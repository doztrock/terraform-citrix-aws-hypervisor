data "citrix_zone" "this" {
  name = var.zone
}

module "aws-hypervisor" {

  source = "../.."

  name       = var.name
  zone       = data.citrix_zone.this.id
  api_key    = var.api_key
  secret_key = var.secret_key
  region     = var.region

}
