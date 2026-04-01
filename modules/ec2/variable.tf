variable "vpc_id" {
  description = "VPC ID where EC2 will be launched"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs from VPC module"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID to use (optional, defaults to latest Amazon Linux 2)"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "my_ip_cidr" {
  description = "Your IP CIDR for SSH access"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for naming resources"
  type        = string
}