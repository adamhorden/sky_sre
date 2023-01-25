# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_launch_template.this

resource "aws_launch_template" "this" {

  image_id      = local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_img_id
  instance_type = local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_ins_typ
  key_name      = local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_key_nm
  name          = local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_nm
  user_data     = local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_usr_dt

  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      volume_size = 20
    }
  }

  monitoring {
    enabled = true
  }

  network_interfaces {
    associate_public_ip_address = true
    security_groups             = local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_net_itf_sec_grps
  }

}
