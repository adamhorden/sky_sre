# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

ah_aws_tf_mod_sre_tsk_01 = {

  # --------------------------------------------------------------------------------------
  #
  # --------------------------------------------------------------------------------------

  #

  "ah_aws" = {

    # ------------------------------------------------------------------------------------
    #
    # ------------------------------------------------------------------------------------

    #

    "ah_aws_tf" = {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "lbl" = {
        "lbl_mod"       = ["ah", "aws", "sre", "tsk", "01"]
        "lbl_mod_attrs" = []
      }

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "lbl_fmt" = {
        "lbl_fmt_lbl_sep" = "-"
        "lbl_fmt_pth_sep" = "_"
      }

    }

    # ------------------------------------------------------------------------------------
    #
    # ------------------------------------------------------------------------------------

    #

    "ah_aws_tf_mod" = {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "alb" = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "target_groups" = [
          {

            "backend_port"     = 80
            "backend_protocol" = "HTTP"
            "name_prefix"      = "p-80-"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "health_check" = {

              "enabled" = true
              "matcher" = "200,404"

            }

          }
        ]
      }

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "asg" = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "max_size" = "1"

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "min_size" = "1"

      }

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "lt" = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "instance_type" = "t4g.small"

      }

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "r53_rec" = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "zone_name" = [
          "adam",
          "horden",
          "in"
        ]

      }

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "vpc" = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "cidr" = "10.100.0.0/16"

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "public_subnets" = [
          "10.100.16.0/22",
          "10.100.20.0/22",
          "10.100.24.0/22"
        ]

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "private_subnets" = [
          "10.100.32.0/22",
          "10.100.36.0/22",
          "10.100.40.0/22"
        ]

      }
    }

  }

}
