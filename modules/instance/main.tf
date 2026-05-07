resource "aws_instance" "this" {
  for_each = var.instances

  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  key_name               = each.value.key_name != "" ? each.value.key_name : null
  source_dest_check      = each.value.source_dest_check
  tenancy                = each.value.tenancy
  ebs_optimized          = each.value.ebs_optimized
  iam_instance_profile   = each.value.iam_instance_profile != "" ? each.value.iam_instance_profile : null
  monitoring             = each.value.monitoring
  user_data              = each.value.user_data != null ? each.value.user_data : null
  tags                   = each.value.tags

  dynamic "launch_template" {
    for_each = each.value.launch_template != null ? [each.value.launch_template] : []
    content {
      id      = launch_template.value.id
      version = launch_template.value.version
    }
  }

  metadata_options {
    http_endpoint               = each.value.metadata_options.http_endpoint
    http_protocol_ipv6          = each.value.metadata_options.http_protocol_ipv6
    http_put_response_hop_limit = each.value.metadata_options.http_put_response_hop_limit
    http_tokens                 = each.value.metadata_options.http_tokens
    instance_metadata_tags      = each.value.metadata_options.instance_metadata_tags
  }
}