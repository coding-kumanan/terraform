resource "aws_instance" "web" {
  ami           = "ami-071bf1e062558b13c"
  instance_type = "t3.micro"

  tags = {
    Name = "samplevm"
  }
}

output "private_ip_address" {
  value = aws_instance.web.private_dns
}

output "public_ip_address" {
    value = aws_instance.web.public_ip
  
}