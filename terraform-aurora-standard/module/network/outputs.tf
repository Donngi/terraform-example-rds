output "subnet_ids" {
  value = [
    aws_subnet.private_a.id,
    aws_subnet.private_c.id,
    aws_subnet.private_d.id
  ]
}
