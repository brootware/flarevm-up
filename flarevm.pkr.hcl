packer {
  required_plugins {
    virtualbox = {
      version = ">= 0.0.1"
      source  = "github.com/hashicorp/virtualbox"
    }
  }
}

source "virtualbox-vm" "flareVm" {
  communicator          = "winrm"
  headless              = false
  winrm_username        = "vagrant"
  winrm_password        = "vagrant"
  winrm_timeout         = "2h"
  shutdown_command      = "shutdown /s /t 10 /f /d p:4:1 /c \"Packer Shutdown\""
  guest_additions_mode  = "disable"
  output_directory      = "./builds-vm"
  vm_name               = "forensicsLab"
  force_delete_snapshot = true
  keep_registered       = false
  skip_export           = false
}

build {
  sources = ["sources.virtualbox-vm.flareVm"]
}

