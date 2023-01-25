# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_asg_lch_tmpl

  ah_aws_tf_mod_sre_tsk_01_mod_asg_lch_tmpl = format(
    "%s",
    lookup(
      aws_launch_template.this,
      "name",
      tostring("")
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_asg_max

  ah_aws_tf_mod_sre_tsk_01_mod_asg_max = format(
    "%d",
    lookup(
      local.ah_aws_tf_mod.asg,
      "max_size",
      tonumber("0")
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_asg_min

  ah_aws_tf_mod_sre_tsk_01_mod_asg_min = format(
    "%d",
    lookup(
      local.ah_aws_tf_mod.asg,
      "min_size",
      tonumber("0")
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_asg_nm

  ah_aws_tf_mod_sre_tsk_01_mod_asg_nm = format(
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

  # local.ah_aws_tf_mod_sre_tsk_01_mod_asg_tags

  ah_aws_tf_mod_sre_tsk_01_mod_asg_tags = merge(
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

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_asg_vpc_zne_id

  ah_aws_tf_mod_sre_tsk_01_mod_asg_vpc_zne_id = formatlist(
    "%s",
    tolist(
      [
        # --------------------------------------------------------------------------------
        # For:
        # --------------------------------------------------------------------------------

        for
        vpc_zne_id_val
        in
        lookup(
          module.sre_tsk_01_vpc,
          "private_subnets",
          tolist([])
        ) :
        vpc_zne_id_val
      ]
    )
  )

}
