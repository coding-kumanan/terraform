resource "aws_instance" "moduleinstance" {
    ami = "ami-071bf1e062558b13c"
    instance_type = "t3.medium"
    vpc_security_group_ids = [var.module_sggroup_variable]
  

tags = {
    name = "module_instance"
}
}
// declaring empty variable to pass the value of sggroupid from modules main.tf
variable "module_sggroup_variable" {}
