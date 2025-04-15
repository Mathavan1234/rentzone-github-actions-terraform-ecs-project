# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "maddy-github-actions-terraform-remote-state"
    key            = "rentzone-app/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-github-actions-state-lock"
  }
}
