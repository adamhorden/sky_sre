# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_dsc

  ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_dsc = format(
    "%s%s",
    ": ",
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

  # local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_eng_rul

  ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_eng_rul = formatlist(
    "%s",
    tolist(
      [

        format(
          "%s",
          "all-all"
        )

      ]
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_ing_pfx_lst_id

  ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_ing_pfx_lst_id = formatlist(
    "%s",
    tolist(
      [

        format(
          "%s",
          lookup(
            aws_ec2_managed_prefix_list.this,
            "id",
            tostring("")
          )
        )

      ]
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_ing_rul

  ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_ing_rul = formatlist(
    "%s",
    tolist(
      [

        format(
          "%s",
          "http-80-tcp"
        )

      ]
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_nm

  ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_nm = format(
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

  # local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_tags

  ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_tags = merge(
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

  # local.ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_vpc_id

  ah_aws_tf_mod_sre_tsk_01_mod_sg_alb_vpc_id = format(
    "%s",
    lookup(
      module.sre_tsk_01_vpc,
      "vpc_id",
      tostring("")
    )
  )

}
