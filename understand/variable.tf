variable "root_vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Master IP allocation block for NEOS Core Network"
}

variable "root_public_subnet_1_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "Public zone 1 IP allocation"
}

variable "root_public_subnet_2_cidr" {
  type        = string
  default     = "10.0.2.0/24"
  description = "Public zone 2 IP allocation"
}

variable "root_private_subnet_1_cidr" {
  type        = string
  default     = "10.0.10.0/24"
  description = "Isolated private zone 1 for Flask container execution"
}

variable "root_private_subnet_2_cidr" {
  type        = string
  default     = "10.0.11.0/24"
  description = "Isolated private zone 2 for Flask container execution"
}