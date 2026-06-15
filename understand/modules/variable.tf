variable "vpc_cidr" {
  type        = string
  description = "The IP range block for the entire VPC"
}

variable "public_subnet_1_cidr" {
  type        = string
  description = "IP block for public facing subnet 1"
}

variable "public_subnet_2_cidr" {
  type        = string
  description = "IP block for public facing subnet 2"
}

variable "private_subnet_1_cidr" {
  type        = string
  description = "IP block for secure private subnet 1"
}

variable "private_subnet_2_cidr" {
  type        = string
  description = "IP block for secure private subnet 2"
}