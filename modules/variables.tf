variable "region" {
    description = "region"
}

variable "availability_zones" {
    description = "availability zones that are going to be used for the subnets"
}

variable "ami"{
    description = "ami id"
    type = string
}

variable "instance_type"{
    description = "instance_type t2.micro"
    type = string
}

variable "instance_count" {
  default = "1"
}
