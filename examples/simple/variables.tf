variable "CITRIX_CLIENT_ID" {
  type        = string
  description = "Client Id for Citrix DaaS service authentication"
}

variable "CITRIX_CLIENT_SECRET" {
  type        = string
  sensitive   = true
  description = "Client Secret for Citrix DaaS service authentication"
}

variable "CITRIX_CUSTOMER_ID" {
  type        = string
  description = "The Citrix Cloud customer ID"
}

variable "api_key" {
  type        = string
  description = "The API key used to authenticate with the AWS APIs"
}

variable "name" {
  type        = string
  description = "Name of the hypervisor"
}

variable "region" {
  type        = string
  description = "AWS region to connect to"
}

variable "secret_key" {
  type        = string
  sensitive   = true
  description = "The secret key used to authenticate with the AWS APIs"
}

variable "zone" {
  type        = string
  description = "Id of the zone the hypervisor is associated with"
}
