resource "aws_instance" "tooling_nexus" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.tooling_nexus_sg.name]
  tags = {
    Name = "nexus"
  }
  user_data = file("nexus-userdata.sh")
}
