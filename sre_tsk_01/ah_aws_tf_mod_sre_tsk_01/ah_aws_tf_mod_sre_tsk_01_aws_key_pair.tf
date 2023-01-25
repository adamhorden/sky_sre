# Copyright (c) 2018 - 2022 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_key_pair.this

resource "aws_key_pair" "this" {

  # --------------------------------------------------------------------------------------
  # Argument:
  # --------------------------------------------------------------------------------------

  # [REFACTOR]

  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJJ1pbqfxwm9wZuVPoR76a1w4ABzkUi2lmNTu+Vv2pGy id_ed25519_adam_horden"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  key_name = local.ah_aws_tf_mod_sre_tsk_01_key_pr_nm
  tags     = local.ah_aws_tf_mod_sre_tsk_01_key_pr_tags

}
