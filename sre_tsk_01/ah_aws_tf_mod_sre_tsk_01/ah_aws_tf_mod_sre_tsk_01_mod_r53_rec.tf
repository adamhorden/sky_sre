# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Module:
# ----------------------------------------------------------------------------------------

# module.sre_tsk_01_r53_rec

module "sre_tsk_01_r53_rec" {
  source  = "terraform-aws-modules/route53/aws//modules/records"
  version = "~> 2.0"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  records   = local.sre_tsk_01_r53_rec_recs
  zone_name = local.sre_tsk_01_r53_rec_zne_nm

}
