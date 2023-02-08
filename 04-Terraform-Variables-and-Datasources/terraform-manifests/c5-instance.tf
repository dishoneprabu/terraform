# EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instace_type
  key_name = var.instance_key
  tags = {
    "Name" = "Web-Server"
  }
  user_data = file("${path.module}/install.sh")
  vpc_security_group_ids = [aws_security_group.internet.id]
}