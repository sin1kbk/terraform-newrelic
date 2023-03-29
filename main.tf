resource "newrelic_one_dashboard_json" "postgres" {
  json = templatefile("${path.module}/dashboard_json/postgres.json.tftpl", { account_id = var.newrelic_account_id })
}

module "integration_aws" {
  count = var.newrelic_aws_account_id == "" ? 0 : 1

  source = "./modules/integration_aws"
  newrelic_account_id = var.newrelic_account_id
  newrelic_aws_account_id = var.newrelic_aws_account_id
}
