
source "vsphere-iso" "autogenerated_1" {
  CPUs                  = "${var.vm_cpu_size}"
  RAM                   = "${var.vm_ram_size}"
  boot_command          = ["<enter>", "<SHIFT+O>", " ks=nfs://${var.nfs_server_path}", "<enter>", ""]
  cluster               = "${var.vsphere_cluster}"
  communicator          = "ssh"
  convert_to_template   = "true"
  datacenter            = "${var.vsphere_datacenter}"
  datastore             = "${var.vsphere_datastore}"
  disk_controller_type  = "${var.vm_disk_controller}"
  disk_size             = "${var.vm_disk_size}"
  disk_thin_provisioned = true
  folder                = "${var.vsphere_template_folder}"
  guest_os_type         = "${var.vm_guestos}"
  insecure_connection   = true
  iso_paths             = ["[${var.vsphere_datastore}] ${var.iso_file_path}"]
  network               = "${var.vsphere_network}"
  network_card          = "vmxnet3"
  password              = "${var.vsphere_password}"
  ssh_password          = "${var.guest_password}"
  ssh_timeout           = "${var.ssh_timeout}"
  ssh_username          = "${var.guest_username}"
  username              = "${var.vsphere_username}"
  vcenter_server        = "${var.vsphere_vcenter}"
  vm_name               = "${var.vm_name}"
}

build {
  sources = ["source.vsphere-iso.autogenerated_1"]

}
