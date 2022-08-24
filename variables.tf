variable "namecheap_username" {
    type = string
}

variable "namecheap_api_key" {
    type = string
}

variable "namecheap_client_ip" {
    type = string
}

variable "namecheap_use_sandbox" {
    type = bool
}

variable "namecheap_nameservers" {
    type = map(object({
        domain = string
        mode = string
        nameservers = list(string)
    }))
}