# Terraform project

## Install terraform

1. download terrafrom
   [click here...](https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_darwin_amd64.zip)
2. unzip and copy terraform to this directory
3. move `terraform` app to /usr/local/bin/
   > mv terraform /usr/local/bin/

## Initialize terraform

1. run > make init
2. paste access_key and secret_keys from iam credentials to infra/secrets.tfvars

```txt
access_key = <<ACCESS_KEY>>
secret_key = <<SECRET_KEY>>
```
