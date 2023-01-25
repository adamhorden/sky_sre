# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_autoscaling_attachment.this

resource "aws_autoscaling_attachment" "this" {
  autoscaling_group_name = module.sre_tsk_01_asg.autoscaling_group_name
  lb_target_group_arn    = module.sre_tsk_01_alb.target_group_arns[0]
}
