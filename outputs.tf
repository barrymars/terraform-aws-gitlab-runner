output "runner_as_group_name" {
  description = "Name of the autoscaling group for the gitlab-runner instance"
  value       = aws_autoscaling_group.gitlab_runner_instance.name
}

output "runner_cache_bucket_arn" {
  description = "ARN of the S3 for the build cache."
  value       = module.cache.arn
}

output "runner_cache_bucket_name" {
  description = "Name of the S3 for the build cache."
  value       = module.cache.bucket
}

output "runner_agent_role_arn" {
  description = "ARN of the role used for the ec2 instance for the GitLab runner agent."
  value       = aws_iam_role.instance.arn
}

output "runner_agent_role_name" {
  description = "Name of the role used for the ec2 instance for the GitLab runner agent."
  value       = aws_iam_role.instance.name
}

output "runner_role_arn" {
  description = "ARN of the role used for the docker machine runners."
  value       = aws_iam_role.docker_machine.arn
}

output "runner_role_name" {
  description = "Name of the role used for the docker machine runners."
  value       = aws_iam_role.docker_machine.name
}

output "runner_agent_sg_id" {
  description = "ID of the security group attached to the GitLab runner agent."
  value       = aws_security_group.runner.id
}

output "runner_sg_id" {
  description = "ID of the security group attached to the docker machine runners."
  value       = aws_security_group.docker_machine.id
}

output "runner_eip" {
  description = "EIP of the Gitlab Runner"
  value       = element(concat(aws_eip.gitlab_runner.*.public_ip, [""]), 0)
}

output "runner_efs" {
  value = aws_efs_file_system.efs.id
}

output "runner_efs_security_group_id" {
  value = aws_security_group.efs.id
}

output "runner_efs_dns_name" {
  value = aws_efs_file_system.efs.dns_name
}

output "runner_efs_mount_target_ids" {
  value = "${join(',', aws_efs_mount_target.efs.*.id)}"
}

output "runner_efs_interface_ids" {
  value = "${join(',', aws_efs_mount_target.efs.*.network_interface_id)}"
}
