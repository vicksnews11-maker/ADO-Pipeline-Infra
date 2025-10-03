module "rg" {
  source              = "../../Modules/RG"
  resource_group_name = "Prod-1"
  location            = "West Europe"
}
module "storage" {
  source              = "../../Modules/Storage"
  depends_on          = [module.rg]
  account_name        = "Prod-1stg"
  resource_group_name = "Prod-1"
  location            = "West Europe"
}
