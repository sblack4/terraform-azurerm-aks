#########################
# Variables 
#########################

variable "CLIENT_ID" {}
variable "CLIENT_SECRET" {}


#########################
#  Main
#########################

module "aks" {
  source = "../"

  prefix             = "this-cluster-is-unique"
  kubernetes_version = "1.13.8"
  CLIENT_ID          = var.CLIENT_ID
  CLIENT_SECRET      = var.CLIENT_SECRET
}

#########################
#  Outputs
#########################
