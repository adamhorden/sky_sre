# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Module:
# ----------------------------------------------------------------------------------------

# module.sre_tsk_01_sg

module "sre_tsk_01_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 4.0"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  description                           = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_dsc
  egress_rules                          = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_eng_rul
  ingress_with_source_security_group_id = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_ing_src_sec_grp_id
  name                                  = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_nm
  tags                                  = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_tags
  vpc_id                                = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_vpc_id

}
