// For simplify use default subnet from vpc
data "aws_vpc" "this" {
  default = true
}

data "aws_subnet_ids" "this" {
  vpc_id = data.aws_vpc.this.id
}
