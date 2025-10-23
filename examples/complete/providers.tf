provider "citrix" {
  cvad_config = {
    client_id     = var.CITRIX_CLIENT_ID
    client_secret = var.CITRIX_CLIENT_SECRET
    customer_id   = var.CITRIX_CUSTOMER_ID
  }
}
