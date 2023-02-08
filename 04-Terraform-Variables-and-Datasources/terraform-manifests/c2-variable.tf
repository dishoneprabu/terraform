variable "region" {
  type = string
  default = "ap-south-1"
}

variable "instace_type" {
  type = string
  default = "t2.micro"
}

variable "instance_key" {
    type = string
    default = "terraform-key"
}