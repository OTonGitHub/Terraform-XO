terraform {
  required_providers {
    xenorchestra = {
      source  = "vatesfr/xenorchestra"
      # version = "0.29.0"
    }
  }
}

provider "xenorchestra" {
  url   = var.XOA_URL
  # If token set, credential signin will fail.
  token = var.XOA_TOKEN # env: XOA_TOKEN
  # username = var.XOA_USER
  # password = var.XOA_PASSWORD

  # This is false by default and will disable ssl verification if true.
  # This is useful if your deployment uses a self signed certificate but should be used sparingly!
  insecure = true # env: XOA_INSECURE
}

data "xenorchestra_pool" "deepblue" {
    name_label = var.POOL_NAME
}

resource "xenorchestra_cloud_config" "cc" {
  name = var.CC_NAME
  template = templatefile("cloud_config.tftpl", {
    username   = var.CC_UNAME
    nic        = var.CC_NICNAME,
    ip_address = var.VM_IP_ADDRESS,
    gateway    = var.VM_GATEWAY,
    ssh_key    = var.SSH_PUB_KEY,
    password   = var.CC_PASWD
  })
}

resource "xenorchestra_vm" "kraken" {
  name_label    = var.VM_NAME
  template      = var.UUID_TEMPLATE
  auto_poweron  = true

  cpus          = var.VM_CPUs
  memory_max    = var.VM_MEMORY_GB * 1024 * 1024 * 1024
  cloud_config  = xenorchestra_cloud_config.cc.template

  affinity_host = data.xenorchestra_pool.deepblue.master

  disk {
    sr_id       = var.UUID_SR
    name_label  = var.VM_DISK_NAME
    size        = var.VM_DISK_SIZE * 1024 * 1024 * 1024
  }

  network {
    network_id  = var.UUID_NIC
  }

  tags = [
    "cloud-init"
  ]
}