# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_mng_pfx_lst_nm

  ah_aws_tf_mod_sre_tsk_01_mod_vpc_mng_pfx_lst_nm = format(
    "%s",
    upper(
      join(
        local.ah_aws_lbl_fmt_lbl_sep,
        compact(
          concat(
            tolist(
              [
                join(
                  local.ah_aws_lbl_fmt_lbl_sep,
                  lookup(
                    local.ah_aws_tf.lbl,
                    "lbl_mod",
                    tolist([])
                  )
                )
              ]
            ),
            tolist(
              [
                join(
                  local.ah_aws_lbl_fmt_lbl_sep,
                  lookup(
                    local.ah_aws_tf.lbl,
                    "lbl_mod_attrs",
                    tolist([])
                  )
                )
              ]
            ),
            tolist(
              [
                join(
                  local.ah_aws_lbl_fmt_lbl_sep,
                  var.ah_aws_env
                )
              ]
            )
          )
        )
      )
    )
  )
  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_mng_pfx_lst_tags

  ah_aws_tf_mod_sre_tsk_01_mod_vpc_mng_pfx_lst_tags = merge(
    tomap({}),
    tomap(
      {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "Environment" = format(
          "%s",
          upper(
            join(
              local.ah_aws_lbl_fmt_lbl_sep,
              var.ah_aws_env
            )
          )
        )

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "Name" = format(
          "%s",
          upper(
            join(
              local.ah_aws_lbl_fmt_lbl_sep,
              compact(
                concat(
                  tolist(
                    [
                      join(
                        local.ah_aws_lbl_fmt_lbl_sep,
                        lookup(
                          local.ah_aws_tf.lbl,
                          "lbl_mod",
                          tolist([])
                        )
                      )
                    ]
                  ),
                  tolist(
                    [
                      join(
                        local.ah_aws_lbl_fmt_lbl_sep,
                        lookup(
                          local.ah_aws_tf.lbl,
                          "lbl_mod_attrs",
                          tolist([])
                        )
                      )
                    ]
                  ),
                  tolist(
                    [
                      join(
                        local.ah_aws_lbl_fmt_lbl_sep,
                        var.ah_aws_env
                      )
                    ]
                  )
                )
              )
            )
          )
        )

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "Version" = format(
          "%s%s",
          join(
            tostring("."),
            tolist(
              [
                format(
                  "%s",
                  "v"
                )
              ]
            )
          ),
          join(
            tostring("."),
            var.ah_aws_env_ver
          )
        )

      }
    )
  )

}
