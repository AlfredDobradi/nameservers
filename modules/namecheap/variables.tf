variable "username" {
    type = string
}

variable "api_key" {
    type = string
}

variable "client_ip" {
    type = string
}

variable "use_sandbox" {
    type = bool
}

variable "nameservers" {
    type = map(object({
        domain = string
        mode = string
        nameservers = list(string)
    }))
}