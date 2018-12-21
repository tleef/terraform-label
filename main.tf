locals {
  id = "${lower(join(var.delimiter, compact(concat(list(var.namespace, var.env, var.name), var.attributes))))}"
  namespace = "${lower(var.namespace)}"
  env = "${lower(var.env)}"
  name = "${lower(var.name)}"
  attributes = "${lower(join(var.delimiter, compact(var.attributes)))}"

  # Merge input tags with our tags.
  # Note: `Name` has a special meaning in AWS and we need to disamgiuate it by using the computed `id`
  tags = "${
      merge(
        map(
          "Namespace", "${local.namespace}",
          "Env", "${local.env}",
          "Name", "${local.id}"
        ), var.tags
      )
    }"
}