#!/bin/bash
projectname=$1
diskname=$2
echo "creating disk ${diskname} in project ${projectname}"
terraform init
terraform apply -auto-approve -var "project_name=${projectname}" -var "disk_name=${diskname}"