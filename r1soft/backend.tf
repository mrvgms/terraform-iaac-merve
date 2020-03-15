terraform {
backend "s3" {
bucket = "terraform-class-merve"
key = "r1soft/us-east-1/tools/tools/jenkins.tfstate"
region = "us-east-1"
  }
}