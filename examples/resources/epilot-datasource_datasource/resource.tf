# resource "epilot-datasource_datasource" "my_datasource" {
#   composite_id = "123e4567-e89b-12d3-a456-426614174000:123e4567-e89b-12d3-a456-426614174000"
#   fields = [
#     "_id",
#     "_title",
#     "contract_number",
#   ]
#   filters = [
#     [
#       # ...
#     ]
#   ]
#   group = {
#     by = "customer._title"
#   }
#   id         = "123e4567-e89b-12d3-a456-426614174000"
#   journey_id = "123e4567-e89b-12d3-a456-426614174000"
#   name       = "Active Contracts"
#   search = {
#     fields = [
#       "_title",
#       "customer._title",
#     ]
#     query = "contract"
#   }
#   source = "contract"
# }