resource "aws_rds_cluster" "aurora" {
  cluster_identifier = "sample-aurora-cluster"

  engine         = "aurora-mysql"
  engine_version = "8.0.mysql_aurora.3.04.1"
  engine_mode    = "provisioned"

  availability_zones = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]

  database_name = "sample" # DBエンジンによって、意味合いが異なる https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/create-db-instance.html
  # db_cluster_parameter_group_name = "default.aurora-mysql8.0" # 未指定時に、デフォルトパラメータグループが作成される

  storage_type = "" # 空文字がスタンダードストレージ

  db_subnet_group_name = aws_db_subnet_group.sample.name

  # encryption
  storage_encrypted = true
  kms_key_id        = data.aws_kms_key.rds.arn

  # auth
  master_username = "admin"
  master_password = "sample-pass"

  iam_database_authentication_enabled = true

  # deploy/maintenance
  apply_immediately            = true # for develop use
  preferred_maintenance_window = "Mon:00:00-Mon:03:00"
  allow_major_version_upgrade  = true

  # backup
  backtrack_window         = 3600          // sec
  backup_retention_period  = 1             # 最大35日。auroraは最低1日
  preferred_backup_window  = "13:00-21:00" # 未指定時はリージョンごとのデフォルトの時間からランダムに30分が選出される https://docs.aws.amazon.com/ja_jp/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
  delete_automated_backups = true

  # delete
  deletion_protection = false
  skip_final_snapshot = true
}



