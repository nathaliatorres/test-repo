region               = "eu-central-1"
vpc_cidr_block       = "10.0.0.0/24"
vpc_instance_tenancy = "default"
vpc_tags = {
  "Resource-Type" = "nonprod"
  "Name"          = "sg-nonprod-1"
}

lb_name                             = "platform-api-qa"
lb_internal                         = true
lb_load_balancer_type               = "network"
lb_subnets                          = ["subnet-072669658da496c4a", "subnet-06293819030751560"]
lb_ip_address_type                  = "ipv4"
lb_enable_cross_zone_load_balancing = true
lb_enable_deletion_protection       = false
lb_dns_record_client_routing_policy = "any_availability_zone"
lb_access_logs = {
  bucket  = "sg-logs-qa"
  enabled = true
  prefix  = "elb/platform-api-qa"
}
lb_tags = {
  "Resource-Type" = "nonprod"
}

tg_name                 = "platform-api-ecs-qa"
tg_port                 = 8080
tg_protocol             = "TCP"
tg_target_type          = "ip"
tg_ip_address_type      = "ipv4"
tg_deregistration_delay = 90
tg_health_check = {
  enabled             = true
  interval            = 30
  path                = "/platform_api/health/"
  port                = "traffic-port"
  protocol            = "HTTP"
  timeout             = 6
  healthy_threshold   = 3
  unhealthy_threshold = 3
}
tg_tags = {
  "Resource-Type" = "nonprod"
}

instances = {
  ecs_instances_admin_workflow_qa = {
    ami                    = "ami-0f37a3fdaaaf3661e"
    instance_type          = "t2.medium"
    subnet_id              = "subnet-072669658da496c4a"
    vpc_security_group_ids = ["sg-064cbb231ba1bca24"]
    key_name               = "nonprod-euc1"
    source_dest_check      = true
    tenancy                = "default"
    ebs_optimized          = false
    iam_instance_profile   = "AmazonEC2ContainerServiceforEC2Role"
    monitoring             = false
    launch_template = {
      id      = "lt-0f212ff506c4e1680"
      version = "10"
    }
    user_data = <<-EOT
#cloud-config
repo_update: true
repo_upgrade: security
runcmd:
  - echo "ECS_CLUSTER=admin-workflow-qa" >> /etc/ecs/ecs.config
  - echo "ECS_BACKEND_HOST=" >> /etc/ecs/ecs.config
  - echo 'ECS_INSTANCE_ATTRIBUTES={"type":"shared"}' >> /etc/ecs/ecs.config
output: { all : '| tee -a /var/log/cloud-init-output.log' }
final_message: "The system is finally up, after $UPTIME seconds"
EOT
    metadata_options = {
      http_endpoint               = "enabled"
      http_protocol_ipv6          = "disabled"
      http_put_response_hop_limit = 1
      http_tokens                 = "optional"
      instance_metadata_tags      = "disabled"
    }
    tags = {
      "AmazonECSManaged" = ""
      "Name"             = "ecs-instances-admin-workflow-qa"
      "Resource-Type"    = "nonprod"
    }
  }
  taher_private_runner_amz = {
    ami                    = "ami-0b74f796d330ab49c"
    instance_type          = "t2.medium"
    subnet_id              = "subnet-072669658da496c4a"
    vpc_security_group_ids = ["sg-092a5ff991a0802bc"]
    key_name               = "taher-private-runner"
    source_dest_check      = true
    tenancy                = "default"
    ebs_optimized          = false
    iam_instance_profile   = ""
    monitoring             = false
    metadata_options = {
      http_endpoint               = "enabled"
      http_protocol_ipv6          = "disabled"
      http_put_response_hop_limit = 2
      http_tokens                 = "required"
      instance_metadata_tags      = "disabled"
    }
    tags = {
      "Name" = "taher-private-runner-amz"
    }
  }
  privat_runner = {
    ami                    = "ami-081d42a282b78e6d3"
    instance_type          = "t2.large"
    subnet_id              = "subnet-072669658da496c4a"
    vpc_security_group_ids = ["sg-064cbb231ba1bca24"]
    key_name               = "nonprod-euc1"
    source_dest_check      = true
    tenancy                = "default"
    ebs_optimized          = false
    iam_instance_profile   = ""
    monitoring             = false
    metadata_options = {
      http_endpoint               = "enabled"
      http_protocol_ipv6          = "disabled"
      http_put_response_hop_limit = 1
      http_tokens                 = "optional"
      instance_metadata_tags      = "disabled"
    }
    tags = {
      "Name" = "privat-runner"
    }
  }
  demo_org_prepare_release_branch_testing = {
    ami                    = "ami-0281e3f1612a178c5"
    instance_type          = "t2.medium"
    subnet_id              = "subnet-06293819030751560"
    vpc_security_group_ids = ["sg-064cbb231ba1bca24"]
    key_name               = "nonprod-euc1"
    source_dest_check      = true
    tenancy                = "default"
    ebs_optimized          = false
    iam_instance_profile   = ""
    monitoring             = false
    metadata_options = {
      http_endpoint               = "enabled"
      http_protocol_ipv6          = "disabled"
      http_put_response_hop_limit = 2
      http_tokens                 = "required"
      instance_metadata_tags      = "disabled"
    }
    tags = {
      "Name" = "demo-org-prepare-release-branch-testing"
    }
  }
  test_instance = {
    ami                    = "ami-09042b2f6d07d164a"
    instance_type          = "t3.micro"
    subnet_id              = "subnet-0adeb216161049cca"
    vpc_security_group_ids = ["sg-064cbb231ba1bca24"]
    key_name               = ""
    source_dest_check      = true
    tenancy                = "default"
    ebs_optimized          = false
    iam_instance_profile   = ""
    monitoring             = false
    metadata_options = {
      http_endpoint               = "enabled"
      http_protocol_ipv6          = "disabled"
      http_put_response_hop_limit = 1
      http_tokens                 = "optional"
      instance_metadata_tags      = "disabled"
    }
    tags = {
      "Name" = "test-instance"
    }
  }
  liveeo_private_replica_debug = {
    ami                    = "ami-081d42a282b78e6d3"
    instance_type          = "t2.micro"
    subnet_id              = "subnet-072669658da496c4a"
    vpc_security_group_ids = ["sg-064cbb231ba1bca24"]
    key_name               = "nonprod-euc1"
    source_dest_check      = true
    tenancy                = "default"
    ebs_optimized          = false
    iam_instance_profile   = ""
    monitoring             = false
    metadata_options = {
      http_endpoint               = "enabled"
      http_protocol_ipv6          = "disabled"
      http_put_response_hop_limit = 1
      http_tokens                 = "optional"
      instance_metadata_tags      = "disabled"
    }
    tags = {
      "Name" = "liveeo-private-replica-debug"
    }
  }
  instance_0334fc9f1f177c10f = {
    ami                    = "ami-0a628e1e89aaedf80"
    instance_type          = "t2.micro"
    subnet_id              = "subnet-02aff1dbfda577bb1"
    vpc_security_group_ids = ["sg-044ac122a34980d84"]
    key_name               = "taher-private-runner"
    source_dest_check      = true
    tenancy                = "default"
    ebs_optimized          = false
    iam_instance_profile   = ""
    monitoring             = false
    metadata_options = {
      http_endpoint               = "enabled"
      http_protocol_ipv6          = "disabled"
      http_put_response_hop_limit = 2
      http_tokens                 = "required"
      instance_metadata_tags      = "disabled"
    }
    tags = {}
  }
}