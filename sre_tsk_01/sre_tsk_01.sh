#!/usr/bin/env bash

# Copyright (c) 2023 - 2023 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

export AWS_PROFILE="AH";
terraform \
  init \
  -upgrade \
  -var="ah_aws_env=[\"env\", \"1\"]" \
  -var="ah_aws_env_ver=[\"0\", \"0\", \"1\"]" \
  -var="ah_aws_rgn_eu_1=[\"eu\", \"west\", \"1\"]" \
  -var-file="./ah_aws_tf_mod_sre_tsk_01_cnf/ah_aws_tf_mod_sre_tsk_01_cnf.tfvars"
export AWS_PROFILE="";

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

export AWS_PROFILE="AH";
terraform \
  workspace \
  select \
  sre_tsk_01_env_1
export AWS_PROFILE="";

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

export AWS_PROFILE="AH";
terraform \
  plan \
  -input=false \
  -out="sre_tsk_01_env_1.tfout" \
  -var="ah_aws_env=[\"env\", \"1\"]" \
  -var="ah_aws_env_ver=[\"0\", \"0\", \"1\"]" \
  -var="ah_aws_rgn_eu_1=[\"eu\", \"west\", \"1\"]" \
  -var-file="./ah_aws_tf_mod_sre_tsk_01_cnf/ah_aws_tf_mod_sre_tsk_01_cnf.tfvars"
export AWS_PROFILE="";

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

export AWS_PROFILE="AH";
terraform \
  apply \
  -input=false \
  sre_tsk_01_env_1.tfout
export AWS_PROFILE="";

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

export AWS_PROFILE="AH";
terraform \
  destroy \
  -var="ah_aws_env=[\"env\", \"1\"]" \
  -var="ah_aws_env_ver=[\"0\", \"0\", \"1\"]" \
  -var="ah_aws_rgn_eu_1=[\"eu\", \"west\", \"1\"]" \
  -var-file="./ah_aws_tf_mod_sre_tsk_01_cnf/ah_aws_tf_mod_sre_tsk_01_cnf.tfvars"
export AWS_PROFILE="";
