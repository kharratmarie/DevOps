
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16" # Vous pouvez ajuster ce CIDR selon vos besoins
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for Public Subnet 1"
  default     = "10.0.1.0/24" # CIDR pour le sous-réseau
}

variable "availability_zone_1" {
  description = "Availability Zone for Public Subnet 1"
  default     = "us-east-1a" # Zone de disponibilité souhaitée
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for Public Subnet 2"
  default     = "10.0.2.0/24" # CIDR pour le sous-réseau
}

variable "availability_zone_2" {
  description = "Availability Zone for Public Subnet 1"
  default     = "us-east-1b" # Zone de disponibilité souhaitée
}


variable "ssh_key_name" {
description = "The name of the SSH key pair to be created"
type = string
default = "deployer_key"
}


variable "instance_type" {
description = "The type of EC2 instance"
type = string
default = "t2.micro"
}


variable "ec2_ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
#   default     = "ami-0ebfd941bbafe70c6" amazon linux
  default     = "ami-0866a3c8686eaeeba"
}