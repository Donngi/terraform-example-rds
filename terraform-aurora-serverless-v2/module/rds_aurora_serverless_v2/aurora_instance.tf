resource "aws_rds_cluster_instance" "aurora" {
  count = 3

  cluster_identifier = aws_rds_cluster.aurora.id
  identifier         = "sample-aurora-instance-${count.index}"
  availability_zone = (
    count.index % 3 == 0 ? "ap-northeast-1a" :
    count.index % 3 == 1 ? "ap-northeast-1c" :
    count.index % 3 == 2 ? "ap-northeast-1d" :
    null
  )

  engine         = aws_rds_cluster.aurora.engine
  engine_version = aws_rds_cluster.aurora.engine_version
  instance_class = "db.serverless"

  # deploy
  apply_immediately          = true # for develop use
  auto_minor_version_upgrade = true

  # monitoring
  monitoring_interval = 60 # sec
  monitoring_role_arn = aws_iam_role.exhanced_monitoring.arn
}
