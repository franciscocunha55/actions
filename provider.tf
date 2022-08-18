terraform {
  backend "s3" {
    bucket         = "bucket-f1"
    key            = "global/s3/bucket-f1/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform_state_DB"
    encrypt = true

  }
}

provider "aws" {
  # Configuration options
  profile = "default"
  region = "eu-central-1"

}