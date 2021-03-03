provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "flaskapp" {
    ami             = "ami-042e8287309f5df03"
    instance_type   = "t2.xlarge"
    key_name        = "jayjay"

    tags = {
        Name        = "flaskapp"
    }
}

output "flaskapp_public_ip" {
    value = aws_instance.flaskapp.public_ip
}
