# Module for creating VPC and Subnets
module "vpc" {
  source            = "./modules/vpc"
  availability_zone = var.availability_zone
}

# Module for creating Security Groups
module "security_group" {
  source            = "./modules/security_group"
  security_group_id = var.security_group_id
}

# Module for creating EC2 Instances
module "ec2" {
  source            = "./modules/ec2"
  region            = var.region
  availability_zone = var.availability_zone
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  security_group_id = module.security_group.security_group_id
  subnet_id         = module.vpc.subnet_id
}