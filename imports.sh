#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.key_pair.aws_key_pair.this' 'taher-private-runner'
"$1" import -var-file environments/sg.tfvars 'module.network_interface.aws_network_interface.this' 'eni-055ce4572025a47de'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this' 'i-000e597ea8aa8260b'