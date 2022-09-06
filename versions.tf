terraform {
  backend "s3" {
    bucket         = "revature-devops-1-dev"
    key            = "codepipeline-lambda"
    region         = "us-east-2"
  }
  required_version = ">= 0.15"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.1"
      #Will allow installation of 4.15.1 and 4.15.10 but not 4.16.0
    }
  }
}
