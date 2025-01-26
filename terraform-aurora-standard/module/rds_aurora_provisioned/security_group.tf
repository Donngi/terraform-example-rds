resource "aws_security_group" "cluster" {
  name        = "sample-aurora-cluster-security-group"
  description = "sample-aurora-cluster-security-group"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }
}
