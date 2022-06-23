variable "region" {
  default = "us-east-1"
}

variable "subnet_count" {
 # default = 2
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "public_cidr_block" {
  default = "10.1.0.0/16"
}

variable "private_cidr_block" {
  default = "10.2.0.0/16"
}
/*
variable "private_subnets" {
  type = list(any)
}

variable "public_subnets" {
  type = list(any)
} 
variable "profile" {
  type = string
  
}
*/
variable "aws_access_key" {
  type      = string
  sensitive = true
}
variable "aws_secret_key" {
  type      = string
  sensitive = true
}