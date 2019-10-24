# terraform-aws-fullstack-pwa

terraform module for deploying a fullstack progressive web app (cloudfront, route53, lambda@edge, s3) in a blink ⚡️

## example

```hcl
module "ied-fullstack-pwa" {
  source  = "app.terraform.io/ied/fullstack-pwa/aws"
  version = "~>1.0.1"

  providers = {
    aws            = "aws"
    aws.n_virginia = "aws.n_virginia"
  }

  common_tags = local.common_tags
  stage       = var.stage
  app_id      = local.app_id
  app_name    = var.app_name
  aws_region  = var.aws_region

  domains           = var.domains[var.stage]
  alternate_domains = local.alternate_domains

  rest_domain = var.rest_domains[var.stage]

  certificate_domain = var.certificate_domain[var.stage]
}
```
