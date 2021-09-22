terraform {
  backend "s3" {
    bucket = "terrrform-devops"
    key    = "sample/terrafrom.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform"
  }
}

output "sample" {
  value = "Hello World"
}

resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep 30"
  }
}