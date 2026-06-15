
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}   


module "infaas" {
  source                = "./modules"  
  vpc_cidr              = var.root_vpc_cidr
  public_subnet_1_cidr  = var.root_public_subnet_1_cidr
  public_subnet_2_cidr  = var.root_public_subnet_2_cidr
  private_subnet_1_cidr = var.root_private_subnet_1_cidr
  private_subnet_2_cidr = var.root_private_subnet_2_cidr
}
