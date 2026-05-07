#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.vpc.aws_vpc.this' 'vpc-0119b9388f2104572'
"$1" import -var-file environments/sg.tfvars 'module.lb.aws_lb.this' 'arn:aws:elasticloadbalancing:eu-central-1:790543352839:loadbalancer/net/platform-api-qa/db2a5cb2e2c0ca9a'
"$1" import -var-file environments/sg.tfvars 'module.lb_target_group.aws_lb_target_group.this' 'arn:aws:elasticloadbalancing:eu-central-1:790543352839:targetgroup/platform-api-ecs-qa/c84754cf9eab09e9'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this["ecs_instances_admin_workflow_qa"]' 'i-010c68975b065af78'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this["taher_private_runner_amz"]' 'i-01494deda99ac7624'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this["privat_runner"]' 'i-0238c2160a7ed790b'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this["demo_org_prepare_release_branch_testing"]' 'i-027d8fe8a296f4dd8'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this["test_instance"]' 'i-02a10aea23a6805fa'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this["liveeo_private_replica_debug"]' 'i-02b8df1061631c9af'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this["instance_0334fc9f1f177c10f"]' 'i-0334fc9f1f177c10f'