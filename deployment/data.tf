data "aws_ssm_parameter" "vpc" {
  name = var.ssm_vpc_id
}

data "aws_ssm_parameter" "public_subnets" {
  count = length(var.ssm_public_subnets)
  name  = var.ssm_public_subnets[count.index]
}

data "aws_ssm_parameter" "private_subnets" {
  count = length(var.ssm_private_subnets)
  name  = var.ssm_private_subnets[count.index]
}

data "aws_acm_certificate" "main" {
  count = length(var.acm_dns_certs)
  domain = var.acm_dns_certs[count.index]
}