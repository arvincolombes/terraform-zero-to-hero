variable "instance_type" { 
description "instance type to create ec2 instace" 
default "t3.micro" 
} 
variable "ami" { 
description "ami id for creating ec2 instace" 
} 
variable "subnet_id" { 
description => "subnet id for creating ec2 instance 
} 
variable "ec2-cout" { 
description "number of ec2 instance to create" 
default 1 
}
sg_ingress = [ 
{
port     = "80" 
protocal = "tcp" 
cidrs    = ["0.0.0.0/0"] 
},
{
port     = "22" 
protocal = "tcp" 
cidrs    = ["172.31.0.0/16"] 
},
{
port     = "22" 
protocal = "tcp" 
cidrs    = [""0.0.0.0/0"] 
}
variable "key_name" {
description "please provide the key name" 
default = "sdkjfhsdfhsdkjhgkfsd"
}

