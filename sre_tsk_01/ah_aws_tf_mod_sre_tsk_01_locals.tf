# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_acc_id

  ah_aws_acc_id = format(
    "%d",
    "346262297470"
    #data.aws_caller_identity.current.account_id
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_env

  ah_aws_env = format(
    "%s",
    join(
      local.ah_aws_lbl_fmt_pth_sep,
      var.ah_aws_env
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_lbl_fmt_lbl_sep

  ah_aws_lbl_fmt_lbl_sep = format(
    "%s",
    lookup(
      local.ah_aws_tf.lbl_fmt,
      "lbl_fmt_lbl_sep",
      tostring("-")
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_lbl_fmt_pth_sep

  ah_aws_lbl_fmt_pth_sep = format(
    "%s",
    lookup(
      local.ah_aws_tf.lbl_fmt,
      "lbl_fmt_pth_sep",
      tostring("_")
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_rgn_eu_1

  ah_aws_rgn_eu_1 = format(
    "%s",
    join(
      local.ah_aws_lbl_fmt_lbl_sep,
      var.ah_aws_rgn_eu_1
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf

  ah_aws_tf = merge(
    var.ah_aws_tf_mod_sre_tsk_01.ah_aws.ah_aws_tf
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod

  ah_aws_tf_mod = merge(
    var.ah_aws_tf_mod_sre_tsk_01.ah_aws.ah_aws_tf_mod
  )

}
