terraform {
  required_version = "0.12.9"

  # backend "s3" {
  #   key            = "terraform.tfstate"
  #   bucket         = "ied.infra.terraform"
  #   profile        = "terraform"
  #   region         = "eu-central-1"
  #   dynamodb_table = "ied.terraform-lock"
  # }
}
