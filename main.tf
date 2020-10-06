variable "token" {}
variable "label" {}
variable "tags" {}
variable "image" {}
variable "region" {}
variable "ssh_key" {}
variable "root_pass" {}

provider "linode" {
    token = var.token
}

resource "linode_instance" "server" {
    label = var.label
    tags = [var.tags]
    image = var.image
    region = var.region
    type = "g6-nanode-1"
    authorized_keys = [var.ssh_key]
    root_pass = var.root_pass
}

output "instance_public_ip" {
    value = linode_instance.server.ip_address
}

