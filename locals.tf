locals {
  // Environment to be set bases on worksapce
  environment = lower(terraform.workspace)
}
