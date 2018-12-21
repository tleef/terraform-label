variable "namespace" {
  description = "Namespace, which could be your organization name, e.g. `x`"
}

variable "env" {
  description = "Environment, e.g. `prod`, `stage`, `dev`, or `test`"
}

variable "name" {
  description = "Name"
}

variable "attributes" {
  type = "list"
  default = []
  description = "Additional attributes, e.g. `1`"
}

variable "delimiter" {
  type = "string"
  default = "-"
  description = "Delimiter to be used between `namespace`, `org`, `app`, `service`, `env` and `attributes`"
}

variable "tags" {
  type = "map"
  default = {}
  description = "Additional tags (e.g. `map(`BusinessUnit`,`XYZ`)"
}