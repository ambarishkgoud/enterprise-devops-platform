variable "vpc_name" {
    description = "Name of the VPC"
    type = string
  
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type = string

    validation {
      condition = can(cidrnetmask(var.vpc_cidr))
      error_message = "Please provide a valid CIDR block."
    }
  
}

variable "enable_dns_support" {
    description = "Enable DNS Support"
    type = bool
    default = true
  
}

variable "enable_dns_hostnames" {
    description = "Enable DNS Hostnames"
    type = bool
    default = true
  
}

variable "environment" {
    description = "Deployment environment"
    type = string

    validation {
      condition = contains (
        ["dev", "qa", "stage", "prod"],
        var.environment
      )

      error_message = "Environment must be dev, qa, stage, or prod."
    }
  
}