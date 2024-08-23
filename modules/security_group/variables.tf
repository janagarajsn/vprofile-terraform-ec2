# Declare variables
# Variable for security group name
variable "sg_name" {
    description = "The name of the security group"
    type        = string
    default     = "vprofile-sg"
}

# variable for vpc id
variable "vpc_id" {
    description = "The vpc id"
    type        = string
}

# Variable for port number for tomcat
variable "port_tomcat" {
    description = "The tomcat port number"
    type        = number
    default     = 8080
}

# Variable for port number for mysql
variable "port_mysql" {
    description = "The mysql port number"
    type        = number
    default     = 3306
}

# Variable for port number for mq
variable "port_mq" {
    description = "The mq port number"
    type        = number
    default     = 5672
}

# Variable for port number for mq management
variable "port_mq_mgmt" {
    description = "The mq management port number"
    type        = number
    default     = 15672
}

# Variable for port number for HTTP
variable "port_http" {
    description = "The http port number"
    type        = number
    default     = 80
}

# Variable for port number for HTTPS
variable "port_https" {
    description = "The https port number"
    type        = number
    default     = 443
}

# Variable for port number for SSH
variable "port_ssh" {
    description = "The ssh port number"
    type        = number
    default     = 22
}

# Variable for port number for Memcached
variable "port_memcached" {
    description = "The memcached port number"
    type        = number
    default     = 11211
}

# Variable for port number for all
variable "port_all" {
    description = "The all port number"
    type        = number
    default     = -1
}