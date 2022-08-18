resource "aws_instance" "name1" {
  instance_type = var.instance_type
  ami = var.ami
  key_name = var.key_name
  subnet_id = aws_subnet.subnet_public[0].id
  vpc_security_group_ids = [aws_security_group.sg_jumper.id]
  associate_public_ip_address = "true"
  tags = {
    Name = "jumper111"

  }
}

### Security Group ###

resource "aws_security_group" "sg_jumper" {
  name        = "sg_jumper-${var.environment}"
  description = "Allow SSH to jumper"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.francisco_IP]
    description = "Francisco_IP"
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg-jumper-${var.environment}"
  }
}