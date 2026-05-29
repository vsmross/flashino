# Define Terraform backend using a S3 bucket for storing the Terraform state
terraform {
  backend "s3" {
    bucket = "vmalwde-terraform-state-bucket"
    key = "terraform-state/terraform.tfstate"
    region = "us-east-2"
    encrypt = true
    use_lockfile = true
 }
}