resource "aws_instance" "frontend" {
  ami                    = "ami-0fcc78c828f981df2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0a65d86379df4012d"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami                    = "ami-0fcc78c828f981df2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0a65d86379df4012d"]

  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami                    = "ami-0fcc78c828f981df2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0a65d86379df4012d"]

  tags = {
    Name = "mysql"
  }
}
