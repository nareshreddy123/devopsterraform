resource "aws_vpc" "main" {
  cidr_block           = var.VPC_CIDR
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name               = "vpc-${var.ENV}"
    ENV                = var.ENV
  }
}
resource "aws_subnet" "public_sunebts" {

  count                = length(var.PUBLIC_SUBNETS)
  cidr_block           = element(var.PUBLIC_SUBNETS, count.index)
  vpc_id               = aws_vpc.main.id
  availability_zone    = element(var.AZS, count.index)
  tags                        = {
    Name                      = "public-subnet-${var.ENV}-${count.index+1}"
    ENV                       = var.ENV
  }
}


esource "aws_subnet" "private_subnets" {
  count                       = length(var.PRIVATE_SUBNETS)
  cidr_block                  = element(var.PRIVATE_SUBNETS, count.index)
  vpc_id                      = aws_vpc.main.id
  availability_zone           = element(var.AZS, count.index)
  tags                        = {
    Name                      = "private-subnet-${var.ENV}-${count.index+1}"
    ENV                       = var.ENV
  }
}





