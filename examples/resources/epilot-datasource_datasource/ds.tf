# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "d0b9b410-2390-11f1-88e6-6f0c2d622d6f:40c1a964-b098-4c6d-acf6-fb35ea759227"
resource "epilot-datasource_datasource" "my_epilot-datasource_datasource" {
  fields       = ["delivery_address", "contract_name", "contract_number", "contracts"]
  filters      = null
  group        = null
  id           = "40c1a964-b098-4c6d-acf6-fb35ea759227"
  journey_id   = "8bf2e9b0-4f95-11f1-8d27-75395b0c053c"
  name         = "contract datasource"
  search       = null
  source       = "contract"
}
