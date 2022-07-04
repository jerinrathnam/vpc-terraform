variable "region" {
  default = "us-east-1"
}

variable "subnet_count" {
 # default = 2
}

variable "cidr_block" {
  default = "10.0.0.0/24"
}
/* 
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
