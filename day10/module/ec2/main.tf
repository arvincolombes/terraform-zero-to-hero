resource "aws_instance" "main" {
count               = var.ec2-cout 
instance_type       = var.instance_type 
ami                 = var.ami 
subnet_id           = var.subnet id 
vpc_security_group_ids = [aws_security_group.sgs.id] 
key_name            = var.key_name 
tags { 
"Name"= "demomodule"
 }
}
resource "aws_security_group" "sgs" { 
name = "ec2-for-sg-instance" 
description = "Allow TLS inbound traffic" 
vpc_id = var.vpc_id 
ingress { 
description = "TLS from VPC 
from_port = var.sg_ingress[0].port 
to_port = var.sg_ingress[0].port 
protocol - var.sg_ingress[0].protocal 
cidr_blocks var.sg_ingress[0].cidrs
}
dynamic "Ingress" { 
for_each var.sg_ingress 
content ( 
description = "TLS from VPC" 
from_port   = ingress.value.port 
to port     = ingress.value.port 
protocol    = ingress.value.protocal 
cidr_blocks =  ingress.value.cidrs 
  } 
}
egress [ 
from_port        = 0 
to_port          = 0
protocol         ="-1"
cidr blocks      = ["0.0.0.0/0"] 
ipv6_cidr_blocks = ["::/8"] 
} 
tags = { 
Name "allow_tls" 
}
