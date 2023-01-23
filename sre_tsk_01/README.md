# Adam Horden

## sre_tsk_01

```shell
export AWS_PROFILE="AH";
terraform \
  output \
    -json \
    "ah_aws_tf_mod_sre_tsk_01" \
      | \
        "/usr/bin/jq"
export AWS_PROFILE="";
```

### sre_tsk_01_env_1

sre_tsk_01.tfstate

```shell
export AWS_PROFILE="AH";
terraform \
  init \
  -upgrade \
  -var="ah_aws_env=[\"env\", \"1\"]" \
  -var="ah_aws_env_ver=[\"0\", \"0\", \"1\"]" \
  -var="ah_aws_rgn_eu_1=[\"eu\", \"west\", \"1\"]" \
  -var-file="./ah_aws_tf_mod_sre_tsk_01_cnf/ah_aws_tf_mod_sre_tsk_01_cnf.tfvars"
export AWS_PROFILE="";
```

```shell
export AWS_PROFILE="AH";
terraform \
  workspace \
  new \
  sre_tsk_01_env_1
export AWS_PROFILE="";
```

```shell
export AWS_PROFILE="AH";
terraform \
  workspace \
  select \
  sre_tsk_01_env_1
export AWS_PROFILE="";
```

```shell
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
```

```shell
export AWS_PROFILE="AH";
terraform \
  apply \
  -input=false \
  sre_tsk_01_env_1.tfout
export AWS_PROFILE="";
```

```shell
export AWS_PROFILE="AH";
terraform \
  destroy \
  -input=false \
  -var="ah_aws_env=[\"env\", \"1\"]" \
  -var="ah_aws_env_ver=[\"0\", \"0\", \"1\"]" \
  -var="ah_aws_rgn_eu_1=[\"eu\", \"west\", \"1\"]" \
  -var-file="./ah_aws_tf_mod_sre_tsk_01_cnf/ah_aws_tf_mod_sre_tsk_01_cnf.tfvars"
export AWS_PROFILE="";
```

```shell
export AWS_PROFILE="AH";
terraform \
  console
export AWS_PROFILE="";
```

```shell
export AWS_PROFILE="AH";
terraform \
  providers
export AWS_PROFILE="";
```
