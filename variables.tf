variable "region" {
  default = "us-east-1"
}
/*variable "profile" {
  type = string
  
}*/
variable "subnet_count" {
  default = 2
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  type = list(any)
}

variable "public_subnets" {
  type = list(any)
} 

variable "aws_access_key" {
  type      = string
  sensitive = true
}
variable "aws_secret_key" {
  type      = string
  sensitive = true
}