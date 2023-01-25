# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Module:
# ----------------------------------------------------------------------------------------

# module.sre_tsk_01_alb

module "sre_tsk_01_alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  name            = local.ah_aws_tf_mod_sre_tsk_01_mod_alb_nm
  security_groups = local.ah_aws_tf_mod_sre_tsk_01_mod_alb_sec_grp
  subnets         = local.ah_aws_tf_mod_sre_tsk_01_mod_alb_sn
  tags            = local.ah_aws_tf_mod_sre_tsk_01_mod_alb_tags
  target_groups   = local.ah_aws_tf_mod_sre_tsk_01_mod_alb_tgt_grps
  vpc_id          = local.ah_aws_tf_mod_sre_tsk_01_mod_alb_vpd_id

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

}
