locals {

  nlb_tags = {
    Name        = var.nlb_tags["Name"]
    Description = var.nlb_tags["Description"]
    Project     = var.nlb_tags["Project"]
    Environment = var.nlb_tags["Environment"]
    Product     = var.nlb_tags["Product"]
    Createdby   = var.nlb_tags["Createdby"]
  }

}


