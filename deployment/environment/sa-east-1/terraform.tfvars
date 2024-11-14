project_name = "sales-cluster"
region       = "sa-east-1"

ssm_vpc_id = "/linuxtips-multiregion/vpc/vpc_id"

ssm_private_subnets = [
  "/linuxtips-multiregion/vpc/private/sa-east-1a",
  "/linuxtips-multiregion/vpc/private/sa-east-1b",
  "/linuxtips-multiregion/vpc/private/sa-east-1c"
]
ssm_public_subnets = [
  "/linuxtips-multiregion/vpc/public/sa-east-1a",
  "/linuxtips-multiregion/vpc/public/sa-east-1b",
  "/linuxtips-multiregion/vpc/public/sa-east-1c"
]

acm_dns_certs = [
  "*.msfidelis.com.br"
]