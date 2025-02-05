module "demo-web" 
source = "./modules/ec2" 
ami "ami-09d3b3274b6c5d4aa" 
subnet id="subnet-0b2062968bcc711d2" 
key_name = "bcreddydevopsluseast1" 
vpc_id = "vpc-8f021d41550012265" 
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

