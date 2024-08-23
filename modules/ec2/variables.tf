# variable for region
variable "region" {
    description = "The AWS region to deploy into"
    type        = string
}

# variable for availability zone
variable "availability_zone" {
    description = "The availability zone for the subnet"
    type        = string
    default     = "us-east-2a"
}

# variable for security group id
variable "security_group_id" {
    description = "The security group id"
    type        = string
}

# variable for subnet id
variable "subnet_id" {
    description = "The subnet id"
    type        = string
}

# variable for instance type
variable "instance_type" {
    description = "The instance type"
    type        = string
    default = "t2.micro"
}

# variable for ami id
variable "ami_id" {
    description = "The ami id"
    type        = string
    default = "ami-085f9c64a9b75eed5"
}

# variable for mysql name
variable "mysqlname" {
    description = "The mysql name"
    type        = string
    default     = "vprofile-db"
}

# variable for memcached name
variable "memcachedname" {
    description = "The memcached name"
    type        = string
    default     = "vprofile-mc"
}

# variable for rabbitmq name
variable "rabbitmqname" {
    description = "The rabbitmq name"
    type        = string
    default     = "vprofile-rmq"
}

# variable for tomcat name
variable "appname" {
    description = "The app name"
    type        = string
    default     = "vprofile-app"
}

# variable for web name
variable "webname" {
    description = "The web name"
    type        = string
    default     = "vprofile-web"
}

# variable for key name
variable "keyname" {
    description = "The key name"
    type        = string
    default     = "vprofile-keypair-us2"
}