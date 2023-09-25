resource "aws_instance" "remote-state" {
//creting multiple resources using count and count value supplied by variable named instacecount.
    count         = var.InstanceCount
    ami           = "ami-071bf1e062558b13c"
    instance_type = "t3.medium"

tags = {
    Name = "terraform-remote-state"
}
}

output "name" {
  value = aws_instance.remote-state["${count.index}"].id
}