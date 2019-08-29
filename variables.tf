variable "datacenter" {
  default = "wdc04"
}

variable "domain" {
  default = "ibm.com"
}

variable "hostname_prefix" {
  default = "IBM-OCP"
}

variable vlan_count {
  description = "Set to 0 if using existing and 1 if deploying a new VLAN"
  default = "1"
}

variable public_vlanid {
  description = "ID of existing public VLAN to connect VSIs"
  default = "2543849"
}

variable private_vlanid {
  description = "ID of existing private VLAN to connect VSIs"
  default = "2543851"
}

variable "private_ssh_key" {
  default     = "~/.ssh/openshift_rsa"
}

variable "ssh_public_key" {
  default     = "~/.ssh/openshift_rsa.pub"
}

variable "ssh-label" {
  default = "ssh_key_terraform"
}

variable "bastion_ssh_key_file" {
  default = "~/.ssh/openshift_rsa"
}

variable "hourly_billing" {
  default = true
}

variable "os_reference_code" {
    default = "REDHAT_7_64"
}


variable "bastion" {
  type = "map"
  default = {
    nodes  = "1"
    vcpu   = "2"
    memory = "8192"
    disk_size             = "100"      # Specify size or leave empty to use same size as template.
    datastore_disk_size   = "50"    # Specify size datastore directory, default 50.
  }
}

variable "master" {
  type = "map"
    default = {
    nodes  = "1"
    vcpu   = "8"
    memory = "16384"
    disk_size          = "100"      # Specify size or leave empty to use same size as template.
    docker_disk_size   = "100"   # Specify size for docker disk, default 100.
    docker_disk_device = "/dev/xvdc"
  }
}

variable "infra" {
  type = "map"
    default = {
    nodes  = "1"
    vcpu   = "2"
    memory = "4096"
    disk_size          = "100"      # Specify size or leave empty to use same size as template.
    docker_disk_size   = "100"   # Specify size for docker disk, default 100.
    docker_disk_device = "/dev/xvdc"
  }
}

variable "worker" {
  type = "map"
    default = {
    nodes  = "1"
    vcpu   = "4"
    memory = "16384"
    disk_size          = "100"      # Specify size or leave empty to use same size as template.
    docker_disk_size   = "100"   # Specify size for docker disk, default 100.
    docker_disk_device = "/dev/xvdc"
  }
}

variable "storage" {
  type = "map"
    default = {
    nodes  = "3"
    vcpu   = "8"
    memory = "16384"
    disk_size           = "100"      # Specify size or leave empty to use same size as template.
    docker_disk_size    = "100"   # Specify size for docker disk, default 100.
    docker_disk_device  = "/dev/xvdc"
    gluster_disk_size   = "250"
    gluster_disk_device = "/dev/xvdd"
  }
}

variable "cloudprovider" {
  default = "ibm"
}

variable "haproxy" {
    default = false
}

variable "ssh_user" {
  default = "root"
}
