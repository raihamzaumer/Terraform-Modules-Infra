#######################################################################################
#AWS PRIVIDER                                                                         #
#######################################################################################
provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr

  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  enable_nat_gateway = var.enable_nat_gateway
  enable_eip         = var.enable_eip

  anywhere_cidr     = var.anywhere_cidr
  app_ingress_rules = var.app_ingress_rules
  db_port           = var.db_port
}

#############################################
# EC2 MODULE
#############################################
module "ec2" {
  source = "./modules/ec2"

  name_prefix       = var.ec2_name_prefix
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  instance_type     = var.ec2_instance_type
  ami_id            = var.ec2_ami_id
  key_name          = var.ec2_key_name
  my_ip_cidr        = var.my_ip_cidr
}

#############################################
# S3 MODULE CALL
#############################################
module "s3_bucket" {
  source = "./modules/s3"

  bucket_name                            = var.bucket_name
  force_destroy                          = var.force_destroy
  enable_versioning                      = var.enable_versioning
  sse_algorithm                          = var.sse_algorithm
  enable_static_website                  = var.enable_static_website
  index_document                         = var.index_document
  error_document                         = var.error_document
  upload_folder_path                     = var.upload_folder_path
  enable_lifecycle                       = var.enable_lifecycle
  lifecycle_rule_id                      = var.lifecycle_rule_id
  lifecycle_prefix                       = var.lifecycle_prefix
  lifecycle_expiration_days              = var.lifecycle_expiration_days
  noncurrent_version_expiration_days     = var.noncurrent_version_expiration_days
  tags                                   = var.tags
}