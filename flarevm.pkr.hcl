packer {
  required_plugins {
    virtualbox = {
      version = ">= 0.0.1"
      source  = "github.com/hashicorp/virtualbox"
    }
  }
}

source "vagrant" "flareVm" {
  source_path           = "rootware/flareVm"
  communicator          = "winrm"
  winrm_username        = "vagrant"
  winrm_password        = "vagrant"
  winrm_timeout         = "2h"
}

build {
  sources = ["sources.vagrant.flareVm"]
}

