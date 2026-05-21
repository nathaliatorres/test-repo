#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.security_group.aws_security_group.this' 'sg-0b58b33cabde6d297'