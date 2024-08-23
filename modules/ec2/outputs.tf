# Output mysql instance id
output "mysql_instance_id" {
    value = aws_instance.mysql.id
}

# Output memcached instance id
output "memcached_instance_id" {
    value = aws_instance.memcached.id
}

# Output rabbitmq instance id
output "rabbitmq_instance_id" {
    value = aws_instance.rabbitmq.id
}

# Output application instance id
output "application_instance_id" {
    value = aws_instance.application.id
}

# Output web instance id
output "web_instance_id" {
    value = aws_instance.web.id
}