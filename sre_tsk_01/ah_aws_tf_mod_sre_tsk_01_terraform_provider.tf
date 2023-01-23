# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Provider:
# ----------------------------------------------------------------------------------------

# aws.ah_aws_sre_tsk_01_rgn_eu_1

provider "aws" {

  # --------------------------------------------------------------------------------------
  # Argument:
  # --------------------------------------------------------------------------------------

  region = format(
    "%s",
    join(
      local.ah_aws_lbl_fmt_lbl_sep,
      var.ah_aws_rgn_eu_1
    )
  )

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  alias = "ah_aws_sre_tsk_01_rgn_eu_1"

  # --------------------------------------------------------------------------------------
  # Assume Role:
  # --------------------------------------------------------------------------------------

  # assume_role {
  # }

}