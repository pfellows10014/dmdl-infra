variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "key_name" {
  type = string
  default = "dmfl-cloud"
}

# Network variables
# AWS Availability Zone
variable "aws_az_list" {
  type = list(string)
  default = ["us-east-1c", "us-east-1d"]
}

# VPC variables
variable "vpc_cidr" {
  type = string
  default = "10.1.64.0/18"
}

# Subnet Variables
variable "public_subnet_cidr_list" {
  type        = list(string)
  description = "CIDR list for the public subnet"
  default     = ["10.1.64.1/24", "10.1.64.2/24"]
}

variable "private_subnet_cidr_list" {
  type        = list(string)
  description = "CIDR list for the public subnet"
  default     = ["10.1.64.51/24", "10.1.64.52/24"]
}

#---E2C Variables---
variable "ec2_instance_type" {
  type = string
  default = "t3.micro"
}

variable "vm_associate_public_ip_address" {
  type        = bool
  description = "Associate a public IP address to the EC2 instance"
  default     = true
}
variable "vm_root_volume_size" {
  type        = number
  description = "Root Volume size of the EC2 Instance"
}
variable "vm_data_volume_size" {
  type        = number
  description = "Data volume size of the EC2 Instance"
}
variable "vm_root_volume_type" {
  type        = string
  description = "Root volume type of the EC2 Instance"
  default     = "gp2"
}
variable "vm_data_volume_type" {
  type        = string
  description = "Data volume type of the EC2 Instance"
  default     = "gp2"
}