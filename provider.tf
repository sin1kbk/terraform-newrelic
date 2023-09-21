terraform {
  backend "local" { path = ".tfstate" }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.15.0"
    }
  }
}
