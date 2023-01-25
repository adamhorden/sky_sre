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

  description             = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_dsc
  egress_rules            = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_eng_rul
  ingress_prefix_list_ids = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_ing_pfx_lst_id
  ingress_rules           = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_ing_rul
  name                    = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_nm
  tags                    = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_tags
  vpc_id                  = local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_vpc_id

}
