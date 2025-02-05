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
