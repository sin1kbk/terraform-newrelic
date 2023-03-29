resource "newrelic_one_dashboard_json" "postgres" {
  json = templatefile("dashboard_json/postgres.json.tftpl", { account_id = var.newrelic_account_id })
}