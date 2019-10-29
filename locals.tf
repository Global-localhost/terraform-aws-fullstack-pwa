# COMPUTED VARIABLES DO NOT CHANGE ANY VALUES FROM HERE
locals {

  # S3 VARIABLES
  # the bucket where the front-end is deployed
  s3_site_bucket_name = var.bucket_name == "" ? "${var.app_id}-front-end--us-1" : var.bucket_name


  api_origin_id = "${var.app_id}-api"

  ## SITE ORIGIN
  site_origin_id = "${var.app_id}-site"


  zones = [for domain in var.domains : regex("([^\\.]+)\\.(.+)", domain)[1]]
}
