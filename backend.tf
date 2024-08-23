terraform {
  backend "s3" {
    bucket  = "vprofile-tfstate-ec2-us2"
    key     = "tf-state"
    region  = "us-east-2"
    encrypt = true
    #dynamodb_table = "terraform-locks"  # Optional for state locking
  }
}
