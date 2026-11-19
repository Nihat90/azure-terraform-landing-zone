locals {
  project     = "tflz"
  name_suffix = "${local.project}-${var.environment}"

  common_tags = {
    project     = "azure-terraform-landing-zone"
    environment = var.environment
    owner       = var.owner
    managed_by  = "terraform"
  }
}
