# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_alb_nm

  ah_aws_tf_mod_sre_tsk_01_mod_alb_nm = format(
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
                  concat(
                    lookup(
                      local.ah_aws_tf.lbl,
                      "lbl_mod_attrs",
                      tolist([])
                    ),
                    tolist(
                      [
                        format(
                          "%s",
                          "alb"
                        )
                      ]
                    )
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

  # local.ah_aws_tf_mod_sre_tsk_01_mod_alb_sec_grp

  ah_aws_tf_mod_sre_tsk_01_mod_alb_sec_grp = formatlist(
    "%s",
    tolist(
      [

        format(
          "%s",
          lookup(
            module.sre_tsk_01_sg_alb,
            "security_group_id",
            tostring("")
          )
        )

      ]
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_alb_sn

  ah_aws_tf_mod_sre_tsk_01_mod_alb_sn = formatlist(
    "%s",
    tolist(
      [
        # --------------------------------------------------------------------------------
        # For:
        # --------------------------------------------------------------------------------

        for
        alb_sn_val
        in
        lookup(
          module.sre_tsk_01_vpc,
          "public_subnets",
          tolist([])
        ) :
        alb_sn_val
      ]
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_alb_tags

  ah_aws_tf_mod_sre_tsk_01_mod_alb_tags = merge(
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
                        concat(
                          lookup(
                            local.ah_aws_tf.lbl,
                            "lbl_mod_attrs",
                            tolist([])
                          ),
                          tolist(
                            [
                              format(
                                "%s",
                                "alb"
                              )
                            ]
                          )
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

  # local.ah_aws_tf_mod_sre_tsk_01_mod_alb_tgt_grps

  ah_aws_tf_mod_sre_tsk_01_mod_alb_tgt_grps = tolist(
    [
      # ----------------------------------------------------------------------------------
      # For:
      # ----------------------------------------------------------------------------------

      for
      tgt_grp_val
      in
      lookup(
        local.ah_aws_tf_mod.alb,
        "target_groups",
        tolist([])
      ) :
      tgt_grp_val
    ]
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_alb_vpd_id

  ah_aws_tf_mod_sre_tsk_01_mod_alb_vpd_id = format(
    "%s",
    lookup(
      module.sre_tsk_01_vpc,
      "vpc_id",
      tostring("")
    )
  )

}
