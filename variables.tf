variable "subnet_numbers" {
  description = "availability zones mapped with cidrblock for each subnet"
  default     = {
    "us-east-1a" = "10.0.1.0/24"
    "us-east-1b" = "10.0.2.0/24"
    "us-east-1c" = "10.0.3.0/24"
  }
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}