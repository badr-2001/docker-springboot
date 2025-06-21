variable "region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "eu-north-1"
}

variable "ami" {
  description = "ami for ubuntu 22.04 eu-north-1"
  type        = string
  default     = "ami-04542995864e26699"
}

variable "ec2_instance" {
  description = "type of EC2s used"
  type        = string
  default     = "t3.micro"
}
