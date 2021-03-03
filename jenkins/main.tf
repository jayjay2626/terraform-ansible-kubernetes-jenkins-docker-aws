provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "jenkins" {
    ami                 = "ami-042e8287309f5df03"
    instance_type       = "t2.micro"
    key_name            = "jayjay"

    tags = {
        Name            = "jenkins"
    }
}
