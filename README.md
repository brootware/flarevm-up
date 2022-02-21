# flarevm-up

<p align="center">
  <img width="300" height="300" src="https://raw.githubusercontent.com/mandiant/flare-vm/master/flarevm.png?raw=true" alt="FLARE VM"/>
</p>

## About The Project

Automated vagrant provisioning of Windows 10 with flarevm tools installed for Digital Forensics and Malware Analysis Lab. [flare-vm tools](https://github.com/mandiant/flare-vm) is a powershell script originall developed by mandiant

## Requirements

- [virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [vagrant](https://www.vagrantup.com/docs/installation)

## How to use?

1. Clone this repo.

   ```bash
   git clone https://github.com/brootware/flarevm-up.git && cd flarevm-up
   ```

2. Execute vagrant up.

   ```bash
   vagrant up
   ```

3. Wait for Vagrant and Virtualbox to do its magic and Start using!

## Note

You might come across ssh connection errors from vagrant up command. You can safely ignore/stop them and proceed to virtualbox gui to start using the VM.

```bash
➜  flareVagrantBox vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'rootware/flareVm'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'rootware/flareVm' version '0.0.1' is up to date...
==> default: Setting the name of the VM: forensicsLab
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
    default: Adapter 2: hostonly
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: Warning: Connection reset. Retrying...
    default: Warning: Remote connection disconnect. Retrying...
    default: Warning: Connection reset. Retrying...
    default: Warning: Remote connection disconnect. Retrying...
    default: Warning: Connection reset. Retrying...
```
