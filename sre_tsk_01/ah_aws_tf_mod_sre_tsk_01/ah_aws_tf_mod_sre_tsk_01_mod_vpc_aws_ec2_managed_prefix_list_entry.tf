# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_ec2_managed_prefix_list_entry.this

resource "aws_ec2_managed_prefix_list_entry" "entry_1" {
  cidr           = "81.150.189.121/32"
  description    = "loc_1"
  prefix_list_id = aws_ec2_managed_prefix_list.this.id
}
