# Use the default vpc of the region
data "aws_vpc" "default" {
    default = true
}

# Use the default subnet
data "aws_subnet" "default" {
    vpc_id = data.aws_vpc.default.id
    availability_zone = var.availability_zone
}
