variable "project_name" {
}

variable "region" {
}

variable "ssm_vpc_id" {
  type = string
}

variable "ssm_private_subnets" {
  type = list(string)
}

variable "ssm_public_subnets" {
  type = list(string)
}