resource "aws_instance" "main" {
  count                  = length(var.components)
  ami                    = "ami-0fcc78c828f981df2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0a65d86379df4012d"]

  tags = {
    Name = var.components[count.index]
  }
}

variable "components" {
  default = ["frontend", "mysql", "backend"]
}


