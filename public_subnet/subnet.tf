resource "aws_subnet" "main_subnet" {
  cidr_block        = var.subnet_cidr_block
  vpc_id            = var.vpc_id
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true
}

resource "aws_route_table" "main_route_table" {
  vpc_id = var.vpc_id
  route {
    cidr_block        = var.destination_cidr
    gateway_id = var.gateway_id
  }
}

resource "aws_route_table_association" "main" {
  subnet_id      = aws_subnet.main_subnet.id
  route_table_id = aws_route_table.main_route_table.id
}