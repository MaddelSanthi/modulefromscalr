variable "instance_type" {
  description = "Type of instance to be created"
  type        = string
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
}

variable "subnet" {
  description = "Subnet ID where the instance will be created"
  type        = string
}

variable "security_group" {
  description = "Security Group ID to associate with the instance"
  type        = string
}

variable "ssh_key" {
  description = "SSH Key Name to associate with the instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the subnet is located"
  type        = string
}

variable "ami" {
  description = "AMI ID to use for the instance"
  type        = string
}
