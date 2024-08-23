# Create a Security Group
resource "aws_security_group" "vpsg" {
    name = var.sg_name
    vpc_id = var.vpc_id
}

# Create a Security Group Ingress Rule for port 22
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_ssh
    to_port = var.port_ssh
    ip_protocol = "tcp"
    description = "Allow SSH"
}

# Create a Security Group Ingress Rule for port 8080
resource "aws_vpc_security_group_ingress_rule" "allow_tomcat" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_tomcat
    to_port = var.port_tomcat
    ip_protocol = "tcp"
    description = "Allow HTTP 8080"
}

# Create a Security Group Ingress Rule for port 443
resource "aws_vpc_security_group_ingress_rule" "allow_https" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_https
    to_port = var.port_https
    ip_protocol = "tcp"
    description = "Allow HTTPS"
}

# Create a Security Group Ingress Rule for port 80
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_http
    to_port = var.port_http
    ip_protocol = "tcp"
    description = "Allow HTTP"
}

# Create a Security Group Ingress Rule for port 3306
resource "aws_vpc_security_group_ingress_rule" "allow_mysql" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_mysql
    to_port = var.port_mysql
    ip_protocol = "tcp"
    description = "Allow MySQL"
}

# Create a Security Group Ingress Rule for port 5672
resource "aws_vpc_security_group_ingress_rule" "allow_mq" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_mq
    to_port = var.port_mq
    ip_protocol = "tcp"
    description = "Allow RabbitMQ"
}

# Create a Security Group Ingress Rule for port 15672
resource "aws_vpc_security_group_ingress_rule" "allow_mq_mgmt" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_mq_mgmt
    to_port = var.port_mq_mgmt
    ip_protocol = "tcp"
    description = "Allow RabbitMQ Management"
}

# Create a Security Group Ingress Rule for port 11211
resource "aws_vpc_security_group_ingress_rule" "allow_memcached" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_memcached
    to_port = var.port_memcached
    ip_protocol = "tcp"
    description = "Allow Memcached"
}

# Create a Security Group Ingress Rule for ICMP on port 0
resource "aws_vpc_security_group_ingress_rule" "allow_icmp" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_all
    to_port = var.port_all
    ip_protocol = "icmp"
    description = "Allow ICMP"
}

# Create a Security Group Egress Rule for port 0
resource "aws_vpc_security_group_egress_rule" "allow_all" {
    security_group_id = aws_security_group.vpsg.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.port_all
    to_port = var.port_all
    ip_protocol = "-1"
    description = "Allow All"
}