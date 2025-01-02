terraform {
  required_version = "~> 1.10.3"

#   backend "s3" {
#     bucket         = "tashdid-ecs-tf-test"
#     key            = "tf-infra/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "tashdidEcsTfTest"
#     encrypt        = true
#   }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82.2"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "default"
}


# All the Modules Are Here
module "tf-state" {
  source      = "./modules/tf-state"
  bucket_name = local.bucket_name
  table_name  = local.table_name
}

module "ecrRepo" {
  source = "./modules/ecr"

  ecr_repo_name = local.ecr_repo_name
}
