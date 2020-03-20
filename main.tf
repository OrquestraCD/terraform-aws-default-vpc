resource "aws_default_vpc" "this" {}

data "aws_vpc" "default" {
  default = true
  tags    = var.tags
}

data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}

data "aws_subnet" "default" {
  count = length(data.aws_subnet_ids.default.ids)
  id    = tolist(data.aws_subnet_ids.default.ids)[count.index]
}
