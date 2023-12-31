module "dmfl-security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name = "dmfl-sg"
  vpc_id = module.dmfl_vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules = ["ssh-tcp"]

}