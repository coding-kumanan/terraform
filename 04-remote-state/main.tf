resource "aws_instance" "remote-state" {
    count         = var.InstanceCount
    ami           = "ami-071bf1e062558b13c"
    instance_type = "t3.medium"

tags = {
    Name = "terraform-remote-state"
}
  
}
output "instance_state" {
  value = aws_instance.remote-state.instance_state
}

output "instance_id" {
    value = aws_instance.remote-state.id
  
}