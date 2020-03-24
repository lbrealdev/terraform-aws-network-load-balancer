# Network Load Balancer
resource "aws_lb" "network_lb" {

  name               = var.nlb_name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  subnets            = data.aws_subnet_ids.private.ids

  enable_deletion_protection       = var.enable_deletion_protection
  enable_cross_zone_load_balancing = var.cross_zone_load_balancing

  tags = local.nlb_tags
}

# Targets Groups

resource "aws_lb_target_group" "tgpr_auth" {

  name        = "${var.target_name}-${var.sufix_target_group["auth"]}"
  port        = var.port
  protocol    = var.protocol
  target_type = var.target_type
  vpc_id      = data.aws_vpc.dev.id

  health_check {
    enabled             = lookup(var.objects_health["0"], "a")
    healthy_threshold   = lookup(var.objects_health["0"], "b")
    interval            = lookup(var.objects_health["0"], "c")
    matcher             = lookup(var.objects_health["0"], "d")
    path                = lookup(var.objects_health["0"], "e")
    port                = lookup(var.objects_health["0"], "f")
    protocol            = lookup(var.objects_health["0"], "g")
    timeout             = lookup(var.objects_health["0"], "h")
    unhealthy_threshold = lookup(var.objects_health["0"], "i")
  }

  stickiness {
    type            = lookup(var.stickness["0"], "type")
    enabled         = lookup(var.stickness["0"], "enabled")
    cookie_duration = lookup(var.stickness["0"], "cookie_duration")
  }
}

resource "aws_lb_target_group" "tgpr_clientes" {

  name        = "${var.target_name}-${var.sufix_target_group["clientes"]}"
  port        = var.port
  protocol    = var.protocol
  target_type = var.target_type
  vpc_id      = data.aws_vpc.dev.id

  health_check {
    enabled             = lookup(var.objects_health["0"], "a")
    healthy_threshold   = lookup(var.objects_health["0"], "b")
    interval            = lookup(var.objects_health["0"], "c")
    matcher             = lookup(var.objects_health["0"], "d")
    path                = lookup(var.objects_health["0"], "e")
    port                = lookup(var.objects_health["0"], "f")
    protocol            = lookup(var.objects_health["0"], "g")
    timeout             = lookup(var.objects_health["0"], "h")
    unhealthy_threshold = lookup(var.objects_health["0"], "i")
  }

  stickiness {
    type            = lookup(var.stickness["0"], "type")
    enabled         = lookup(var.stickness["0"], "enabled")
    cookie_duration = lookup(var.stickness["0"], "cookie_duration")
  }

}

resource "aws_lb_target_group" "tgpr_tipologias" {

  name        = "${var.target_name}-${var.sufix_target_group["tipologias"]}"
  port        = var.port
  protocol    = var.protocol
  target_type = var.target_type
  vpc_id      = data.aws_vpc.dev.id

  health_check {
    enabled             = lookup(var.objects_health["0"], "a")
    healthy_threshold   = lookup(var.objects_health["0"], "b")
    interval            = lookup(var.objects_health["0"], "c")
    matcher             = lookup(var.objects_health["0"], "d")
    path                = lookup(var.objects_health["0"], "e")
    port                = lookup(var.objects_health["0"], "f")
    protocol            = lookup(var.objects_health["0"], "g")
    timeout             = lookup(var.objects_health["0"], "h")
    unhealthy_threshold = lookup(var.objects_health["0"], "i")
  }

  stickiness {
    type            = lookup(var.stickness["0"], "type")
    enabled         = lookup(var.stickness["0"], "enabled")
    cookie_duration = lookup(var.stickness["0"], "cookie_duration")
  }

}

resource "aws_lb_target_group" "tgpr_alias" {

  name        = "${var.target_name}-${var.sufix_target_group["alias"]}"
  port        = var.port
  protocol    = var.protocol
  target_type = var.target_type
  vpc_id      = data.aws_vpc.dev.id

  health_check {
    enabled             = lookup(var.objects_health["0"], "a")
    healthy_threshold   = lookup(var.objects_health["0"], "b")
    interval            = lookup(var.objects_health["0"], "c")
    matcher             = lookup(var.objects_health["0"], "d")
    path                = lookup(var.objects_health["0"], "e")
    port                = lookup(var.objects_health["0"], "f")
    protocol            = lookup(var.objects_health["0"], "g")
    timeout             = lookup(var.objects_health["0"], "h")
    unhealthy_threshold = lookup(var.objects_health["0"], "i")
  }

  stickiness {
    type            = lookup(var.stickness["0"], "type")
    enabled         = lookup(var.stickness["0"], "enabled")
    cookie_duration = lookup(var.stickness["0"], "cookie_duration")
  }

}

resource "aws_lb_target_group" "tgpr_garantias" {

  name        = "${var.target_name}-${var.sufix_target_group["garantias"]}"
  port        = var.port
  protocol    = var.protocol
  target_type = var.target_type
  vpc_id      = data.aws_vpc.dev.id

  health_check {
    enabled             = lookup(var.objects_health["0"], "a")
    healthy_threshold   = lookup(var.objects_health["0"], "b")
    interval            = lookup(var.objects_health["0"], "c")
    matcher             = lookup(var.objects_health["0"], "d")
    path                = lookup(var.objects_health["0"], "e")
    port                = lookup(var.objects_health["0"], "f")
    protocol            = lookup(var.objects_health["0"], "g")
    timeout             = lookup(var.objects_health["0"], "h")
    unhealthy_threshold = lookup(var.objects_health["0"], "i")
  }

  stickiness {
    type            = lookup(var.stickness["0"], "type")
    enabled         = lookup(var.stickness["0"], "enabled")
    cookie_duration = lookup(var.stickness["0"], "cookie_duration")
  }

}

resource "aws_lb_target_group" "tgpr_informes" {

  name        = "${var.target_name}-${var.sufix_target_group["informes"]}"
  port        = var.port
  protocol    = var.protocol
  target_type = var.target_type
  vpc_id      = data.aws_vpc.dev.id

  health_check {
    enabled             = lookup(var.objects_health["0"], "a")
    healthy_threshold   = lookup(var.objects_health["0"], "b")
    interval            = lookup(var.objects_health["0"], "c")
    matcher             = lookup(var.objects_health["0"], "d")
    path                = lookup(var.objects_health["0"], "e")
    port                = lookup(var.objects_health["0"], "f")
    protocol            = lookup(var.objects_health["0"], "g")
    timeout             = lookup(var.objects_health["0"], "h")
    unhealthy_threshold = lookup(var.objects_health["0"], "i")
  }

  stickiness {
    type            = lookup(var.stickness["0"], "type")
    enabled         = lookup(var.stickness["0"], "enabled")
    cookie_duration = lookup(var.stickness["0"], "cookie_duration")
  }

}

resource "aws_lb_target_group" "tgpr_asinc" {

  name        = "${var.target_name}-${var.sufix_target_group["asinc"]}"
  port        = var.port
  protocol    = var.protocol
  target_type = var.target_type
  vpc_id      = data.aws_vpc.dev.id

  health_check {
    enabled             = lookup(var.objects_health["0"], "a")
    healthy_threshold   = lookup(var.objects_health["0"], "b")
    interval            = lookup(var.objects_health["0"], "c")
    matcher             = lookup(var.objects_health["0"], "d")
    path                = lookup(var.objects_health["0"], "e")
    port                = lookup(var.objects_health["0"], "f")
    protocol            = lookup(var.objects_health["0"], "g")
    timeout             = lookup(var.objects_health["0"], "h")
    unhealthy_threshold = lookup(var.objects_health["0"], "i")
  }

  stickiness {
    type            = lookup(var.stickness["0"], "type")
    enabled         = lookup(var.stickness["0"], "enabled")
    cookie_duration = lookup(var.stickness["0"], "cookie_duration")
  }

}

# Listeners

resource "aws_lb_listener" "auth" {

  load_balancer_arn = aws_lb.network_lb.arn
  port              = var.listener_port["auth"]
  protocol          = var.listener_protocol

  default_action {
    type             = var.listener_type
    target_group_arn = aws_lb_target_group.tgpr_auth.arn
  }
}

resource "aws_lb_listener" "clientes" {

  load_balancer_arn = aws_lb.network_lb.arn
  port              = var.listener_port["clientes"]
  protocol          = var.listener_protocol

  default_action {
    type             = var.listener_type
    target_group_arn = aws_lb_target_group.tgpr_clientes.arn
  }
}

resource "aws_lb_listener" "tipologias" {

  load_balancer_arn = aws_lb.network_lb.arn
  port              = var.listener_port["tipologias"]
  protocol          = var.listener_protocol

  default_action {
    type             = var.listener_type
    target_group_arn = aws_lb_target_group.tgpr_tipologias.arn
  }
}

resource "aws_lb_listener" "alias" {

  load_balancer_arn = aws_lb.network_lb.arn
  port              = var.listener_port["alias"]
  protocol          = var.listener_protocol

  default_action {
    type             = var.listener_type
    target_group_arn = aws_lb_target_group.tgpr_alias.arn
  }
}

resource "aws_lb_listener" "garantias" {

  load_balancer_arn = aws_lb.network_lb.arn
  port              = var.listener_port["garantias"]
  protocol          = var.listener_protocol

  default_action {
    type             = var.listener_type
    target_group_arn = aws_lb_target_group.tgpr_garantias.arn
  }
}

resource "aws_lb_listener" "informes" {

  load_balancer_arn = aws_lb.network_lb.arn
  port              = var.listener_port["informes"]
  protocol          = var.listener_protocol

  default_action {
    type             = var.listener_type
    target_group_arn = aws_lb_target_group.tgpr_informes.arn
  }
}

resource "aws_lb_listener" "asinc" {

  load_balancer_arn = aws_lb.network_lb.arn
  port              = var.listener_port["asinc"]
  protocol          = var.listener_protocol

  default_action {
    type             = var.listener_type
    target_group_arn = aws_lb_target_group.tgpr_asinc.arn
  }
}