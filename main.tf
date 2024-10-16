terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "=1.48.1"
    }
  }
}

resource "hcloud_ssh_key" "deployer" {
  name   = "${var.key_name}-key"
  public_key = "${var.ssh_key}"

}
