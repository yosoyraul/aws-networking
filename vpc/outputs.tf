output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  value = module.public_subnet.subnet_id
}

output "private_subnet_id" {
  value = module.private_subnet.subnet_id
}

output "gateway_id" {
  value = aws_internet_gateway.main_igw.id
}