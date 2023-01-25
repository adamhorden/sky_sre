# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Module:
# ----------------------------------------------------------------------------------------

# module.sre_tsk_01_asg

module "sre_tsk_01_asg" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "~> 6.0"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  launch_template     = local.ah_aws_tf_mod_sre_tsk_01_mod_asg_lch_tmpl
  max_size            = local.ah_aws_tf_mod_sre_tsk_01_mod_asg_max
  min_size            = local.ah_aws_tf_mod_sre_tsk_01_mod_asg_min
  name                = local.ah_aws_tf_mod_sre_tsk_01_mod_asg_nm
  tags                = local.ah_aws_tf_mod_sre_tsk_01_mod_asg_tags
  vpc_zone_identifier = local.ah_aws_tf_mod_sre_tsk_01_mod_asg_vpc_zne_id

  create_launch_template = false

}
