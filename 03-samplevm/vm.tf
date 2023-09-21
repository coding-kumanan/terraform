resource "aws_instance" "web" {
  ami           = "ami-071bf1e062558b13c"
  instance_type = "t3.micro"

  tags = {
    Name = "samplevm"
  }
}