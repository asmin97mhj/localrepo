provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "devops-asmin" {
        ami = "ami-06aa3f7caf3a30282"
        instance_type = "t2.micro"
        key_name = "devops_asminkey"
        availability_zone = "us-east-1a"
        vpc_security_group_ids = ["devops-asmin-SG"]
        tags = {
        Name = "Asmin"
}
