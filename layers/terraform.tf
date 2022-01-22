module "ec2" {
  source = "../modules"
  region = "us-east-2"
  availability_zones = "us-east-2a"
  ami = "ami-002068ed284fb165b"
  instance_type = "t2.micro"
}
