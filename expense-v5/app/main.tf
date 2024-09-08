# Creates EC2 Instance 
resource "aws_instance" "main" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }
}

# Creates DNS Record
resource "aws_route53_record" "main" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.expense.internal"
  type    = "A"
  ttl     = 10
  records = [aws_instance.main.private_ip]
}


