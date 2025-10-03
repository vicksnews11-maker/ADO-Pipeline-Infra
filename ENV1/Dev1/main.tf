module "rg" {
  source              = "../Modules/RG"
  resource_group_name = "dev-1"
  location            = "West Europe"
}

module "storage" {
  source              = "../Modules/Storage"
  depends_on          = [module.rg]
  account_name        = "dev-1stg"
  resource_group_name = module.rg.resource_group_name
  location            = module.rg.location
}

