# Output Subnet ID
output "subnet_id" {
    value = data.aws_subnet.default.id
}