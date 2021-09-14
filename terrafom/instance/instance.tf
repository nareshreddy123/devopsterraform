resource "aws_instance" "myinstance" {
  ami             = "ami-074df373d6bafa625"
  instance_type   = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

provider "aws" {
  region = "us-east-1"

}


