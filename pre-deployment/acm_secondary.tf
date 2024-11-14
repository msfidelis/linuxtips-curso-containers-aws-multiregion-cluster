resource "aws_acm_certificate" "secondary" {

  provider = aws.secondary

  domain_name       = var.acm_dns_name
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "secondary" {

  provider = aws.secondary

  for_each = {
    for dvo in aws_acm_certificate.secondary.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = var.route53_hosted_zone
}

resource "aws_acm_certificate_validation" "secondary" {

  provider = aws.secondary

  certificate_arn         = aws_acm_certificate.secondary.arn
  validation_record_fqdns = [for record in aws_route53_record.secondary : record.fqdn]
}
