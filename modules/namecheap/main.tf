terraform {
    required_providers {
        namecheap = {
            source = "namecheap/namecheap"
            version = ">= 2.0.0"
        }
    }
}

provider "namecheap" {
    user_name = var.username
    api_user = var.username
    api_key = var.api_key
    client_ip = var.client_ip
    use_sandbox = var.use_sandbox
}

resource "namecheap_domain_records" "nameservers" {
  for_each = var.nameservers
  domain = each.value.domain
  mode = each.value.mode

  nameservers = each.value.nameservers
}