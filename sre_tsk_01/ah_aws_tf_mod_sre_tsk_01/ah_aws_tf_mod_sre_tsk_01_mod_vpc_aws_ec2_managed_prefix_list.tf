# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_ec2_managed_prefix_list.this

resource "aws_ec2_managed_prefix_list" "this" {
  address_family = "IPv4"
  max_entries    = 5
  name           = local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_mng_pfx_lst_nm
  tags           = local.ah_aws_tf_mod_sre_tsk_01_mod_vpc_mng_pfx_lst_tags
}
