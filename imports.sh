#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.vpc.aws_vpc.this' 'vpc-05fed6e9ac0f64a6e'