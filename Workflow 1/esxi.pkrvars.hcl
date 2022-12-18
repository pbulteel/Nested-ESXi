vsphere_vcenter= "vcsa01.home.lab"
vsphere_username= "administrator@lab.home"
vsphere_password= "VMware1!VMware1!"
vsphere_datacenter= "SanJose"
vsphere_cluster= "Physical"
vsphere_datastore= "NFS-3"
vsphere_template_folder= "Packer_VMs"
vsphere_network= "VSS-Trunk"
vm_name= "esxi-nested"
vm_hostname= "vesxi001"
vm_guestos= "vmkernel7guest"
vm_cpu_size= "8"
vm_ram_size= "262144"
vm_disk_controller= "pvscsi"
vm_disk_size= "4096"
guest_username= "root"
guest_password= "VMware1!"
ssh_timeout= "15m"

nfs_server_path = "192.168.156.11/volume1/vmware/ks.cfg"
iso_file_path = "/ISOs/VMware-VMvisor-Installer-7.0.0-15843807.x86_64.iso"

// Boot and Provisioning Settings
common_data_source      = "http" // set to nfs or disk will use nfs_server_path
common_http_ip          = null
common_http_port_min    = 8000
common_http_port_max    = 8099
common_ip_wait_timeout  = "20m"
common_shutdown_timeout = "15m"

