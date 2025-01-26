module "network" {
  source = "../../module/network"
}

module "aurora_serverless_v2" {
  source = "../../module/rds_aurora_serverless_v2"

  vpc_id         = module.network.vpc_id
  vpc_cidr_block = module.network.vpc_cidr_block
  subnet_ids     = module.network.subnet_ids
}
