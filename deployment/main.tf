module "cluster" {
  # source = "github.com/msfidelis/linuxtips-curso-containers-aws-modules.git//cluster"

  source = "/Users/matheus/Workspace/linuxtips/linuxtips-curso-containers-aws-modules/cluster"

  project_name = var.project_name
  region       = var.region

  vpc_id = data.aws_ssm_parameter.vpc.value

  private_subnets = data.aws_ssm_parameter.private_subnets[*].value
  public_subnets  = data.aws_ssm_parameter.public_subnets[*].value

  acm_certs = data.aws_acm_certificate.main[*].arn
}