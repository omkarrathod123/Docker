resource "aws_instance" "dockerServer" {
  instance_type = var.instance_type
  key_name = "Practic"
  ami = var.ami
  user_data = file("./docker.sh")
  availability_zone = "ap-south-1b"

  tags = {
    Name = "Docker Server"
    OS = "Ubuntu"
    Env = "Lab"
    Container = "Docker"
  }
}
output "instanceIP" {
  value = aws_instance.dockerServer.public_ip
}
