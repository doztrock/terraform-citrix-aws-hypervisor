#
# REQUIRED
#

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

#
# OPTIONAL
#

variable "metadata" {
  type = list(object({
    name  = string
    value = string
  })) 
  description = "Metadata for the Hypervisor"
  default     = null
}

variable "scopes" {
  type        = set(string)
  description = "The IDs of the scopes for the hypervisor to be a part of"
  default     = null
}
