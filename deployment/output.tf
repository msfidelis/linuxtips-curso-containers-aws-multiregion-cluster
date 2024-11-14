output "lb_external_arn" {
  value = aws_ssm_parameter.lb_external_arn.id
}

output "lb_external_listener_arn" {
  value = aws_ssm_parameter.lb_external_listener_arn.id
}

output "lb_internal_arn" {
  value = aws_ssm_parameter.lb_internal_arn.id
}

output "lb_internal_listener_arn" {
  value = aws_ssm_parameter.lb_internal_listener_arn.id
}

output "lb_internal_listener_https_arn" {
  value = aws_ssm_parameter.lb_internal_listener_https_arn.id
}

output "service_discovery_cloudmap_name" {
  value = aws_ssm_parameter.service_discovery_cloudmap_name.id
}

output "service_discovery_cloudmap_id" {
  value = aws_ssm_parameter.service_discovery_cloudmap_id.id
}

output "service_discovery_service_connect_name" {
  value = aws_ssm_parameter.service_discovery_service_connect_name.id
}

output "service_discovery_service_connect_id" {
  value = aws_ssm_parameter.service_discovery_service_connect_id.id
}

output "vpc_link" {
  value = aws_ssm_parameter.vpc_link.id
}

output "vpc_link_arn" {
  value = aws_ssm_parameter.vpc_link_arn.id
}