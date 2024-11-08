resource "aws_ssm_parameter" "lb_external_arn" {
  type  = "String"
  name  = format("/%s/lb/external/arn", var.project_name)
  value = module.cluster.lb_external_arn
}

resource "aws_ssm_parameter" "lb_external_listener_arn" {
  type  = "String"
  name  = format("/%s/lb/external/listener", var.project_name)
  value = module.cluster.lb_external_listener
}

resource "aws_ssm_parameter" "lb_internal_arn" {
  type  = "String"
  name  = format("/%s/lb/internal/arn", var.project_name)
  value = module.cluster.lb_internal_arn
}

resource "aws_ssm_parameter" "lb_internal_listener_arn" {
  type  = "String"
  name  = format("/%s/lb/internal/listener", var.project_name)
  value = module.cluster.lb_internal_listener
}

resource "aws_ssm_parameter" "service_discovery_cloudmap_name" {
  type  = "String"
  name  = format("/%s/service-discovery/cloudmap/name", var.project_name)
  value = module.cluster.service_discovery_cloudmap_name
}

resource "aws_ssm_parameter" "service_discovery_cloudmap_id" {
  type  = "String"
  name  = format("/%s/service-discovery/cloudmap/id", var.project_name)
  value = module.cluster.service_discovery_cloudmap
}

resource "aws_ssm_parameter" "service_discovery_service_connect_name" {
  type  = "String"
  name  = format("/%s/service-discovery/service-connect/name", var.project_name)
  value = module.cluster.service_discovery_service_connect_name
}

resource "aws_ssm_parameter" "service_discovery_service_connect_id" {
  type  = "String"
  name  = format("/%s/service-discovery/service-connect/id", var.project_name)
  value = module.cluster.service_discovery_service_connect
}

resource "aws_ssm_parameter" "vpc_link" {
  type  = "String"
  name  = format("/%s/vpc-link/id", var.project_name)
  value = module.cluster.vpc_link
}

resource "aws_ssm_parameter" "vpc_link_arn" {
  type  = "String"
  name  = format("/%s/vpc-link/arn", var.project_name)
  value = module.cluster.vpc_link_nlb_arn
}