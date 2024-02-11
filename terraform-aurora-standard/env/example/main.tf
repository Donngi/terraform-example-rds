module "network" {
  source = "../../module/network"
}

module "aurora_standard" {
  source     = "../../module/rds_aurora_standard"
  subnet_ids = module.network.subnet_ids
}
