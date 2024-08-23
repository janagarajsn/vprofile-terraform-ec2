# Module for creating VPC and Subnets
module "vpc" {
    source  = "./modules/vpc"
    availability_zone = "us-east-2a"
}

# Module for creating Security Groups
module "security_group" {
    source = "./modules/security_group"
    vpc_id = module.vpc.vpc_id
}

# Module for creating EC2 Instances
module "ec2" {
    source = "./modules/ec2"
    security_group_id = module.security_group.security_group_id
    subnet_id = module.vpc.subnet_id
}