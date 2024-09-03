resource "aws_instance" "tfinstance" {
  ami           = "ami-0fcc78c828f981df2"
  instance_type = "t3.micro"

  tags = {
    Name = "My-instance"
  }
}