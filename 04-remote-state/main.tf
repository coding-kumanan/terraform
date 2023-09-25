//data source to extract the data from the sources 
data "aws_ami" "my-ami" {
  most_recent      = true
  name_regex       = "centos_Ansible"
  owners           = ["self"]

}
resource "aws_instance" "remote-state" {
//creting multiple resources using count and count value supplied by variable named instacecount.
    count         = length(var.RoboComponents)
    ami           = data.aws_ami.my-ami.image_id
    instance_type = "t3.medium"

tags = {
    Name = var.RoboComponents[count.index]
}
}
variable "RoboComponents" {
    default = ["catalogue, user, forntend"] 
  
}
