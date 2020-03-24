data "aws_vpc" "dev" {
  state = var.state
}

data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.dev.id

  tags = {
    Name = var.subnet_tag_priv
  }
}