module "network" {
  source = "../../module/network"
}

module "aurora_provisioned" {
  source = "../../module/rds_aurora_provisioned"

  vpc_id         = module.network.vpc_id
  vpc_cidr_block = module.network.vpc_cidr_block
  subnet_ids     = module.network.subnet_ids
}
