# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.ah_aws_env

variable "ah_aws_env" {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "ah_aws_env"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.ah_aws_env_ver

variable "ah_aws_env_ver" {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "ah_aws_env_ver"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.ah_aws_rgn_eu_1

variable "ah_aws_rgn_eu_1" {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "ah_aws_rgn_eu_1"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.ah_aws_tf_mod_sre_tsk_01

variable "ah_aws_tf_mod_sre_tsk_01" {

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = object(
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      ah_aws = object(
        {

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          ah_aws_tf = object(
            {

              # --------------------------------------------------------------------------
              #
              # --------------------------------------------------------------------------

              #

              lbl = object(
                {
                  lbl_mod       = list(string)
                  lbl_mod_attrs = list(string)
                }
              )

              # --------------------------------------------------------------------------
              #
              # --------------------------------------------------------------------------

              #

              lbl_fmt = object(
                {
                  lbl_fmt_lbl_sep = string
                  lbl_fmt_pth_sep = string
                }
              )

            }
          )

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          ah_aws_tf_mod = object(
            {

              # --------------------------------------------------------------------------
              #
              # --------------------------------------------------------------------------

              #

              vpc = object(
                {

                  # ----------------------------------------------------------------------
                  #
                  # ----------------------------------------------------------------------

                  #

                  cidr = string

                  # ----------------------------------------------------------------------
                  #
                  # ----------------------------------------------------------------------

                  #

                  private_subnets = list(string)

                  # ----------------------------------------------------------------------
                  #
                  # ----------------------------------------------------------------------

                  #

                  public_subnets = list(string)

                }
              )

            }
          )

        }
      )

    }
  )

}
