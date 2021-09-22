resource "aws_vpc" "main" {
  cidr_block                       = var.VPC_CIDR
}
      tags                         = {
         Name                      = "vpc-${var.ENV}"
         ENV                       = var.ENV
}



