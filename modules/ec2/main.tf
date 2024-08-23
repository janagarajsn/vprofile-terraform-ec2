# Create EC2 Instance for mysql
resource "aws_instance" "mysql" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [var.security_group_id]
    key_name = var.keyname
    
    tags = {
        Name = var.mysqlname
    }
}

# Create EC2 Instance for memcached
resource "aws_instance" "memcached" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [var.security_group_id]
    key_name = var.keyname
    
    tags = {
        Name = var.memcachedname
    }
}

# Create EC2 instance for rabbitmq
resource "aws_instance" "rabbitmq" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [var.security_group_id]
    key_name = var.keyname
    
    tags = {
        Name = var.rabbitmqname
    }
}

# Create EC2 instance for application
resource "aws_instance" "application" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [var.security_group_id]
    key_name = var.keyname
    
    tags = {
        Name = var.appname
    }
}

# Create EC2 instance for webserver
resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [var.security_group_id]
    key_name = var.keyname
    
    tags = {
        Name = var.webname
    }
}