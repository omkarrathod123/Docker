resource "aws_instance" "dockerServer" {
  instance_type = var.instance_type
  key_name = "Practic"
  user_data = file("./docker.sh")
}