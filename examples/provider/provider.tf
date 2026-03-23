terraform {
  required_providers {
    epilot-datasource = {
      source  = "epilot-dev/epilot-datasource"
      version = "0.30.4"
    }
  }
}

provider "epilot-datasource" {
  server_url = "..." # Optional
}