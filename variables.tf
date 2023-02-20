variable "default_tags" {
  default = {}
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Needs editing
variable "prefix" {
  default     = "week6"
  type        = string
  description = "Name prefix"
}


# VPC CIDR range
variable "vpc_cidr" {
 # default     = "default"
  type        = string
  description = "VPC to host static web site"
}

# Provision public subnets in custom VPC
variable "public_subnet_cidrs" {
  default     = ["default"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

variable "env" {
  default     = "default"
  type        = string
  description = "Deployment Environment"
}


variable "az_count" {
  description = "number of active availability zones in VPC"
  default     = "0"
  
}


variable "availability_zone_names" {
    default     = []
    description = "availability zone names"
    type = list(string)
}