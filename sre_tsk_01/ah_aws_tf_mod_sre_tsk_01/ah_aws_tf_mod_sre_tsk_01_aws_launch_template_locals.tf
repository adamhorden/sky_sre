# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_img_id

  ah_aws_tf_mod_sre_tsk_01_lch_tmpl_img_id = format(
    "%s",
    lookup(
      data.aws_ami.this,
      "image_id",
      tostring("")
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_ins_typ

  ah_aws_tf_mod_sre_tsk_01_lch_tmpl_ins_typ = format(
    "%s",
    lookup(
      local.ah_aws_tf_mod.lt,
      "instance_type",
      tostring("")
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_key_nm

  ah_aws_tf_mod_sre_tsk_01_lch_tmpl_key_nm = format(
    "%s",
    lookup(
      aws_key_pair.this,
      "key_name",
      tostring("")
    )
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_net_itf_sec_grps 

  ah_aws_tf_mod_sre_tsk_01_lch_tmpl_net_itf_sec_grps = formatlist(
    "%s",
    tolist(
      [

        format(
          "%s",
          lookup(
            module.sre_tsk_01_sg,
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

  # local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_nm

  ah_aws_tf_mod_sre_tsk_01_lch_tmpl_nm = format(
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

  # local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_tags

  ah_aws_tf_mod_sre_tsk_01_lch_tmpl_tags = merge(
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

  # local.ah_aws_tf_mod_sre_tsk_01_lch_tmpl_usr_dt

  ah_aws_tf_mod_sre_tsk_01_lch_tmpl_usr_dt = base64encode(
    templatefile(
      format(
        "%s/ah_aws_tf_mod_sre_tsk_01_aws_launch_template_user_data.sh.tpl",
        path.module
      ),
      {
      }
    )
  )

}
