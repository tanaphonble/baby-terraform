#!/bin/sh

cd infra
terraform apply -var-file="secrets.tfvars"
