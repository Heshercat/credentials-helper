terraform {
  backend "remote" {
    hostname     = "chester.fatcat.testenv.scalr.dev"
    organization = "env-v0oja4nugufnv5jpe"
    token = "{add your token here}"

    workspaces {
      name = "CredHelper2"
    }
  }
}

module "electro_flute" {
  source  = "hesher.fatcat.testenv.scalr.dev/acc-v0oja3orpvs7nb2n8/electro_flute/module"
  version = "0.1.4"
}
