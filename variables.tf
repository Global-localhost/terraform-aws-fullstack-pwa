# GLOBAL VARIABLES
variable "stage" {
  type        = "string"
  description = "The deploy environment in [prod, dev, preprod]"
}

variable "common_tags" {
  type        = "map"
  description = "a list of tags set on the different resources"
  default     = {}
}

variable "app_id" {
  type        = "string"
  description = "The id of the application"
}

variable "app_name" {
  type        = "string"
  description = "The name of the application"
}

# PROVIDER VARIABLES

variable "aws_region" {
  type        = "string"
  description = "The aws region where the infrastructure is hosted"
  default     = "eu-central-1"
}

variable "certificate_domain" {
  type        = "string"
  description = "the domain certificate for cloudfront"
}

# Route53 Variables
variable "domains" {
  type        = "list"
  description = "a list of domain pointing to the cloud front instance (e.g., myapp.mydomain.fr)"
}

variable "alternate_domains" {
  type        = "list"
  description = "a list of domain pointing to the cloud front instance (e.g., myapp.mydomain.fr)"
}

variable "rest_domain" {
  type        = "string"
  description = "the rest domain name"
}
