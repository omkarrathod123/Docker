variable "region" {
  default = "ap-south-1"
  type = string
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "ami" {
  type = string
  default = "ami-06b6e5225d1db5f46"
}
