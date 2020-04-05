
output "vpc_id" {
  value = aws_default_vpc.this.id
}

output "subnet_ids" {
  value = values(zipmap(data.aws_subnet.default.*.availability_zone, data.aws_subnet.default.*.id))
}

output "public_subnets" {
  value = values(zipmap(data.aws_subnet.default.*.availability_zone, data.aws_subnet.default.*.id))
}