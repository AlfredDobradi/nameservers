module "namecheap" {
    source = "./modules/namecheap"

    username = var.namecheap_username
    api_key = var.namecheap_api_key
    client_ip = var.namecheap_client_ip
    use_sandbox = var.namecheap_use_sandbox
    nameservers = var.namecheap_nameservers
}