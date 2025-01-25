module "network" {
  source = "../../module/network"
}

module "aurora_provisioned" {
  source     = "../../module/rds_aurora_provisioned"
  subnet_ids = module.network.subnet_ids
}
