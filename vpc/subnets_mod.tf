data "aws_availability_zones" "all" {}



module "public_subnet" {
  source = "../public_subnet"
  vpc_id = aws_vpc.main_vpc.id
  availability_zone = data.aws_availability_zones.all.names[0]
  subnet_cidr_block = var.pub_cidr_block
  gateway_id = aws_internet_gateway.main_igw.id
}

module "private_subnet" {
  source = "../private_subnet"
  vpc_id = aws_vpc.main_vpc.id
  availability_zone = data.aws_availability_zones.all.names[0]
  subnet_cidr_block = var.priv_cidr_block
}