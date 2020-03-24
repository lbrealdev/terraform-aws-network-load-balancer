#--------------------------------------------------------------
# Global variables
#--------------------------------------------------------------

variable "state" {
  type    = string
  default = "available"
}

variable "subnet_tag_priv" {
  type    = string
  default = "*.private-*"
}

#--------------------------------------------------------------
# Network Load Balancer Variables
#--------------------------------------------------------------

variable "nlb_name" {
  type        = string
  default     = "dev-euc1-caucion-nlb-terraform"
  description = "Tha name of network load balancer"
}

variable "internal" {
  type        = bool
  default     = true
  description = "The LB will be internal or not `true or false`"
}

variable "load_balancer_type" {
  type        = string
  default     = "network"
  description = "The type of load balancer to create. Possible values are application or network. The default value is application"
}

variable "enable_deletion_protection" {
  type        = bool
  default     = false
  description = "If true, deletion of the load balancer will be disabled via the AWS API. This will prevent Terraform from deleting the load balancer. Defaults to false"
}

variable "cross_zone_load_balancing" {
  type    = bool
  default = true
}

variable "nlb_tags" {
  type = map(string)
  default = {
    Name : "caucion-nlb-terraform"
    Description : "network load balancer internal"
    Project : "caucion"
    Environment : "dev"
    Product : "Amazon Load Balancing"
    Createdby : "technician_iaas"
  }
}

#--------------------------------------------------------------
# Targets Groups variables
#--------------------------------------------------------------

variable "target_name" {
  type    = string
  default = "target-solunion"
}

variable "sufix_target_group" {
  type = map(string)
  default = {
    auth : "auth"
    clientes : "clientes"
    tipologias : "tipologias"
    alias : "alias"
    garantias : "garantias"
    informes : "ga-inf"
    asinc : "ga-inf-as"
  }
}

variable "objects_health" {
  type = list(object({
    a = bool
    b = number
    c = number
    d = string
    e = string
    f = string
    g = string
    h = number
    i = number
  }))
  default = [
    {
      a = true
      b = 3
      c = 30
      d = "200-399"
      e = "/v2/api-docs"
      f = "traffic-port"
      g = "HTTP"
      h = 6
      i = 3
    }
  ]
}

variable "port" {
  type    = number
  default = 8080
}

variable "protocol" {
  type    = string
  default = "TCP"
}

variable "target_type" {
  type    = string
  default = "ip"
}

variable "stickness" {
  type = list(object({
    type            = string
    enabled         = bool
    cookie_duration = number
  }))
  default = [
    {
      type            = "lb_cookie"
      enabled         = false
      cookie_duration = 86400
    }
  ]
}

#--------------------------------------------------------------
# Listeners variables
#--------------------------------------------------------------

variable "listener_port" {
  type = map(number)
  default = {
    auth       = 8081
    clientes   = 8082
    tipologias = 8083
    alias      = 8084
    garantias  = 8085
    informes   = 8086
    asinc      = 8087
  }
}

variable "listener_protocol" {
  type    = string
  default = "TCP"
}

variable "listener_type" {
  type    = string
  default = "forward"
}