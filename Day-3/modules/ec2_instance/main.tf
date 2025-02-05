resource "aws_instance" "example" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    subnet_id = var.subnet_id_value
    key_name = data.aws_key_pair.oregon.key
    vpc_security_group_ids = var.security_group_id
}
tag = {
	Name = "${var.tag_name}instance
}
