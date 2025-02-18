variable "XOA_URL" {  # Must be ws or wss
  description = "Xen Orchestra URL (wss://10.20.10.69)."
  type        = string
}

variable "XOA_TOKEN" {
  description = "Xen Orchestra token (from XO-UI or XO-CLI)."
  type        = string
  sensitive   = true
}

variable "XOA_USER" {
  description = "Xen Orchestra username."
  type        = string
}

variable "XOA_PASSWORD" {
  description = "Xen Orchestra password."
  type        = string
  sensitive   = true
}

variable "CC_NAME" {
  description = "Cloud-init config name (saved in XOA)."
  type        = string
}

variable "CC_UNAME" {
  description = "Cloud-init username for the VM."
  type        = string
}

variable "CC_PASWD_HASH" {
  description = "SHA-512 password hash for sudo (use 'openssl passwd -6')."
  type        = string
  sensitive   = true
}

variable "CC_NICNAME" {
  description = "NIC name for the Cloud-init VM image."
  type        = string
}

variable "VM_IP_ADDRESS" {
  description = "VM IPv4 address (DHCP4 must be disabled)."
  type        = string
}

variable "VM_GATEWAY" {
  description = "VM IPv4 gateway (check VLAN)."
  type        = string
}

variable "POOL_NAME" {
  description = "XCP-ng pool name."
  type        = string
  default     = "GCX-DeepBlue"
}

variable "UUID_TEMPLATE" {
  description = "Template UUID for Terraform."
  type        = string
}

variable "UUID_NIC" {
  description = "Physical NIC UUID from the pool."
  type        = string
}

variable "UUID_SR" {
  description = "Storage repository UUID for VM installation."
  type        = string
}

variable "VM_HOSTNAME" {
  description = "Hostname for the VM, created by cloud-init."
  type        = string
}

variable "VM_NAME" {
  description = "Label for the new VM."
  type        = string
}

variable "VM_DESCRIPTION" {
  description = "Purpose of VM, viewed in XOA"
  type        = string
}

variable "VM_CPUs" {
  description = "Number of VM vCPUs."
  type        = number
  default     = 2
}

variable "VM_MEMORY_GB" {
  description = "VM memory in GB."
  type        = number
  default     = 2
}

variable "VM_DISK_SIZE_GB" {
  description = "VM disk size in GB."
  type        = number
  default     = 10
}

variable "VM_DISK_NAME" {
  description = "Name of the VM's root disk."
  type        = string
  default     = "root-disk"
}

variable "SSH_PUB_KEY" {
  description = "Public SSH key for the VM (Cloud-init)."
  type        = string
  sensitive   = true
}

variable "ANSIBLE_PUB_KEY" {
  description = "Public SSH key for Ansible to manage VM (Cloud-init)."
  type        = string
  sensitive   = true
}

variable "ANSIBLE_VM_USER" {
  description = "Username to be used by Ansible to manage VM."
  type        = string
  sensitive   = true
}