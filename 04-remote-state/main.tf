resource "aws_instance" "remote-state" {
    count         = var.InstanceCount
    ami           = "ami-071bf1e062558b13c"
    instance_type = "t3.medium"

tags = {
    Name = "terraform-remote-state"
}
  
}
output "instance_state" {
//have to use count.index if you are creating resources with count
  value = aws_instance.remote-state.instance_state[count.index]
}

output "instance_id" {
    value = aws_instance.remote-state.id[count.index]
  
}