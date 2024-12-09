variable "aws_instance" {
    default = "terraform"
    type = string
  }

variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    type = string
    description = "This is the AMI ID of DevOps-practice which is RHEL-9"
  }

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "sg_from_port" {
    default = 22
    type = number
  
}
variable "sg_name" {
    default = "allow_ssh"
    type = string
  
}
variable "sg_to_port" {
    default = 22
    type = number
  
}
variable "aws_tags" {
    type = map
    default = {
        Name= "backend"
        project="expense"
        component ="backend"
        environment="dev"
        terraform="true"
    }
  
}
variable "protocol" {
    default = "tcp"
  
}
variable "ingress_cidr" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
  
}