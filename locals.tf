locals {
  dns_word = var.env == "prod" ? "www" : var.env
  dns_name = var.component == "frontend" ? "${local.dns_word}.${var.dns_domain}" : "${var.component}-${var.env}.${var.dns_domain}"

  parameters = concat([var.component, "nexus"], var.parameters)
}