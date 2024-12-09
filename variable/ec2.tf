resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.allow_ssh_terraform.id ]
    tags = var.aws_tags
  
}

resource "aws_security_group" "allow_ssh_terraform" {
    name = var.sg_name
    description = "Allow all instances"
   
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks =["::/0"]

    }
    ingress{
        from_port = var.sg_from_port
        to_port = var.sg_to_port
        protocol = var.protocol
        cidr_blocks = var.ingress_cidr
        ipv6_cidr_blocks = ["::/0"]
    }
    tags = var.aws_tags
  
}