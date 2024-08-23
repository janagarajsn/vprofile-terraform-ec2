# Output VPC ID and Subnet ID
output "vpc_id" {
    value = data.aws_vpc.default.id
}

output "subnet_id" {
    value = data.aws_subnet.default.id
}