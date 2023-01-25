# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Module:
# ----------------------------------------------------------------------------------------

# module.sre_tsk_01_vpc

module "sre_tsk_01_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.0"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  azs             = local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_azs
  cidr            = local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_cidr
  name            = local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_nm
  private_subnets = local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_pvt_sn
  public_subnets  = local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_pub_sn
  tags            = local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_tags

  enable_nat_gateway = true
  single_nat_gateway = true

}
