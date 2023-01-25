# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Module:
# ----------------------------------------------------------------------------------------

# module.sre_tsk_01_sg_alb

module "sre_tsk_01_sg_alb" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 4.0"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  description = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_dsc
  name        = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_nm
  tags        = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_tags
  vpc_id      = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp"]
  egress_rules        = ["all-all"]
}
