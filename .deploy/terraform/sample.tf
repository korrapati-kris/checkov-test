resource "aws_efs_file_system" "sharedstore" {
  creation_token = var.efs["creation_token"]

  lifecycle_policy {
    transition_to_ia = var.efs["transition_to_ia"]
  }

  kms_key_id                      = var.efs["kms_key_id"]
  encrypted                       = false
  performance_mode                = var.efs["performance_mode"]
  provisioned_throughput_in_mibps = var.efs["provisioned_throughput_in_mibps"]
  throughput_mode                 = var.efs["throughput_mode"]
}

# resource "aws_cloudwatch_log_group" "log_group" {
#   name              = "test-log-group"
#   # retention_in_days = 0
# }

resource "aws_ecr_repository" "foo" {
  name                 = "bar"
  image_tag_mutability = "MUTABLE"
}

