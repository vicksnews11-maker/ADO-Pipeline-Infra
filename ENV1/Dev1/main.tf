module "rg" {
  source              = "../Modules/RG"
  resource_group_name = "dev-1"
  location            = "West Europe"
}

module "storage" {
  source                  = "../Modules/Storage"
  depends_on              = [module.rg]
  storage_account_name    = "dev1stg"
  resource_group_name     = "dev-1"
  location                = "West Europe"
}

