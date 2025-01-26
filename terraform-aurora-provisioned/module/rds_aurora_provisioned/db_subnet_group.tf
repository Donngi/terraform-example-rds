resource "aws_db_subnet_group" "sample" {
  name       = "sample"
  subnet_ids = var.subnet_ids
}
