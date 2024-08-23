# Output security group id
output "security_group_id" {
    value = data.aws_security_group.existing.id
}
