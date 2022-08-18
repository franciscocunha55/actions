variable "region" {
  type = string
  default = "eu-central-1"
}

variable "ami" {
  type = string
}

variable "environment" {
  type = string
  default = "dev"
}

variable "francisco_IP" {
  type = string
  default = "89.152.194.175/32"
}

variable "instance_type" {
  type = string
  default = "t2.nano"
}

variable "key_name"{
  type = string
  description = "Key name for SSHing into EC2"
  default = "key_sandBox"
}
