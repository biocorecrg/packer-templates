variable "ami_prefix" {
  description = "AMI prefix name"
  type        = string
  default     = "nf-entrypoint-course"
}

variable "region" {
  description = "The AWS region you're using"
  type        = string
  default     = "eu-central-1"
}

variable "subnet_id" {
  description = "The Subnet to build the AMI in"
  type        = string
  default     = "subnet-8a280df7"
}

variable "BUILD_NUMBER" {
  description = "The build number"
  type        = string
  default     = "1"
}

variable "instance_type" {
  default     = "t3.medium"
  description = "The AMI build instance"
  type        = string
}

variable "ami_users" {
  default = []
}

variable "associate_public_ip_address" {
  type    = bool
  default = false
}

variable "ssh_interface" {
  type    = string
  default = "public_ip"
}

variable "ssh_username" {
  type    = string
  default = "ec2-user"
}
