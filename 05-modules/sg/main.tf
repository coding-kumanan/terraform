resource "aws_security_group" "module_sggroup" {
    name        = "module_allow_ssh"
    description = "Allow ssh inbound traffic"

  ingress {
    description      = "SSH From Internet"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "module_allow_ssh"
  }
}
// declaring the output of the moudule_sggroupid to use in ec2 moudule 
output "module_sggroup_output" {
    value = aws_security_group.module_sggroup.id
}