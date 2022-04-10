# variable "image_id" {
#   type = string
# }

# variable "instance_type" {
#   type = string
# }

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc-cidr" {
  default     = "10.11.0.0/16"
  description = "VPC CIDR Block"
  type        = string
}

// Creating Public Subnets in VPC

variable "public-subnet-1-cidr" {
  default     = "10.11.0.0/24"
  description = "Public Subnet 1 CIDR Block"
  type        = string
}

variable "public-subnet-2-cidr" {
  default     = "10.11.100.0/24"
  description = "Public Subnet 2 CIDR Block"
  type        = string
}

// Creating Private Subnets in VPC

variable "private-subnet-1-cidr" {
  default     = "10.11.1.0/24"
  description = "Private Subnet 1 CIDR Block"
  type        = string
}

variable "private-subnet-2-cidr" {
  default     = "10.11.2.0/24"
  description = "Private Subnet 2 CIDR Block"
  type        = string
}

variable "private-subnet-3-cidr" {
  default     = "10.11.3.0/24"
  description = "Private Subnet 3 CIDR Block"
  type        = string
}

variable "private-subnet-4-cidr" {
  default     = "10.11.101.0/24"
  description = "Private Subnet 4 CIDR Block"
  type        = string
}
variable "private-subnet-5-cidr" {
  default     = "10.11.102.0/24"
  description = "Private Subnet 4 CIDR Block"
  type        = string
}
variable "private-subnet-6-cidr" {
  default     = "10.11.103.0/24"
  description = "Private Subnet 4 CIDR Block"
  type        = string
}
