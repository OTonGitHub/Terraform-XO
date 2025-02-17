variable "XOA_URL" { # Must be ws or wss
  description = "The URL to Xen Orchestra instance (wss://10.10.0.69)"
  type        = string
}

variable XOA_TOKEN {
  description = "Token generated from XOA, can from XO-UI or XO-CLI"
  type        = string
  sensitive   = true
}

variable "XOA_USER" {
  description = "Username for Xen Orchestra"
  type        = string
}

variable "XOA_PASSWORD" {
  description = "Password for Xen Orchestra"
  type        = string
  sensitive   = true
}

variable "CC_NAME" {
  description = "Name of Cloud-init config, saved to XOA"
  type        = string
}

variable "CC_UNAME" {
  description = "Cloud-init username to set on VM"
  type        = string
}

variable "CC_PASWD" {
  description = "Cloud-init user password for sudo access"
  type        = string
  sensitive   = true
}

variable "CC_NICNAME" {
  description = "Cloud-init VM image NIC name"
  type        = string
}

variable "VM_IP_ADDRESS" {
  description = "IPv4 Address of the VM, DHCP4 Must be desabled"
  type        = string
}

variable "VM_GATEWAY" {
  description = "IPv4 gateway for the VM, check VLAN"
  type        = string
}

variable "POOL_NAME" {
  description = "The name of your XCP-ng pool"
  type        = string
  default     = "GCX-DeepBlue"
}

variable "UUID_TEMPLATE" {
  description = "UUID of the template to terraform"
  type        = string
}

variable "UUID_NIC" {
  description = "UUID of the physical NIC from the pool"
  type        = string
}

variable "UUID_SR" {
  description = "UUID of the storage resporitory for VM to instll in"
  type        = string
}

variable "VM_NAME" {
  description = "The name label for the new VM"
  type        = string
}

variable "VM_CPUs" {
  description = "Number of vCPUs for the VM"
  type        = number
  default     = 2
}

variable "VM_MEMORY_GB" {
  description = "Memory for the VM (in GB)"
  type        = number
  default     = 2
}

variable "VM_DISK_SIZE" {
  description = "Disk size for the VM (in GB)"
  type        = number
  default     = 10
}

variable "VM_DISK_NAME" {
  description = "Name for VM root disk"
  type        = string
  default     = "root-disk"
}

variable "SSH_PUB_KEY" {
  description = "public SSH key for user in cloud-init for VM"
  type        = string
  sensitive   = true
}