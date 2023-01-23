# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

#

terraform {

  # --------------------------------------------------------------------------------------
  # Required Providers:
  # --------------------------------------------------------------------------------------

  required_providers {

    # ------------------------------------------------------------------------------------
    # Provider:
    # ------------------------------------------------------------------------------------

    aws = {

      # ----------------------------------------------------------------------------------
      # Argument:
      # ----------------------------------------------------------------------------------

      configuration_aliases = [
        aws.ah_aws_sre_tsk_01_rgn_eu_1
      ]

      # ----------------------------------------------------------------------------------
      # Argument:
      # ----------------------------------------------------------------------------------

      version = ">= 4.45.0"

    }

  }

  # --------------------------------------------------------------------------------------
  # Argument:
  # --------------------------------------------------------------------------------------

  required_version = ">= 1.3.0"

}
