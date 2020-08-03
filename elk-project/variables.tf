variable "aws_access_key" {
  description = "AWS access key used to create infrastructure"
}

# Required
variable "aws_secret_key" {
  description = "AWS secret key used to create AWS infrastructure"
}

variable "aws_region" {
  description = "Region for the VPC"
  default = "eu-west-1"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default = "10.0.1.0/24"
}

variable "ami" {
  description = "AMI for EC2"
  default = "ami-008320af74136c628"
}

variable "instance_type" {
  description = "Instance type used for all EC2 instances"
  default     = "t3a.medium"
}

variable "key_path" {
  description = "SSH Public Key path"
  default = "/home/rancho/.ssh/id_rsa.pub"
}

variable "public_ip" {
  description = "Public IP address"
}