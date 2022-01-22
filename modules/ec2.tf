provider "aws"{
    region = "${var.region}"
      access_key = "AKIAVC3CUBHYJ3LLEOSN"
      secret_key = "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"
    }

resource "aws_instance" "ec2_pro" {
    availability_zone = "${var.availability_zones}"
    ami ="${var.ami}"
    instance_type = "${var.instance_type}"
    key_name = "dec23"
    # count = var.instance_count
    tags = {
        Name = "casestudy"
        # Name = "Terraform-${count.index + 1}"
        }
    security_groups= ["casestudy"]   
    }

resource "aws_security_group" "casestudy" {
    name = "casestudy"
    description = "security group"
    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
         from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "casestudy"
    }
}
