terraform {
  backend "remote" {
    hostname     = "hesher.fatcat.testenv.scalr.dev"
    organization = "acc-v0oja3orpvs7nb2n8"

    workspaces {
      name = "CredHelper"
    }
  }
}

module "electro_flute" {
  source  = "hesher.fatcat.testenv.scalr.dev/acc-v0oja3orpvs7nb2n8/electro_flute/module"
  version = "0.1.4"
}
