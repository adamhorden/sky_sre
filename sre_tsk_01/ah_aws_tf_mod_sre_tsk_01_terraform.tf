# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

#

terraform {

  # --------------------------------------------------------------------------------------
  #
  # --------------------------------------------------------------------------------------

  backend "local" {

    # ------------------------------------------------------------------------------------
    # Arguments:
    # ------------------------------------------------------------------------------------

    path = "sre_tsk_01_env_1.tfstate"

  }

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

      version = ">= 4.45.0"

    }

  }

  # --------------------------------------------------------------------------------------
  # Argument:
  # --------------------------------------------------------------------------------------

  required_version = ">= 1.3.0"

}
