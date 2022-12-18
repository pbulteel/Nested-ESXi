# Nested-ESXi

This is Nested ESXi project that will deploy 5 ESXi hosts with 4 PNICs, 3 disks, create two clusters (MGMT and Compute), add those hosts there, create new latest version of vDS (7.0 at the moment), move last two PNICs to vDS and add port-groups.

Finally NSX-T Manager and two NSX-T Edges will be rolled out on a new infrastructure.

A set of YouTube videos were created by HowToVeeam that shows you how the process works. This is what lead me to copying this repo and updating it.

Workflows need to be executed in order starting with the first one.

### Workflow 1 - creating the ESXi template

``` shell
cd Workflow 1  
```

Place ks.cfg file on an NFS server and adjust esxi.pkrvars.hcl file to reflect your environment, or use the http server provided by packer by using "http" option.

``` shell
packer build -var-file=esxi.pkrvars.hcl esxi.pkr.hcl
```

Watch the video [on YouTube](https://www.youtube.com/watch?v=yKNrrUzhNtg)

### Workflow 2 - deploy 5 ESXi VMs 

``` shell
cd ../Workflow 2
```

Adjust terraform.tfvars and variables.tf files to reflect your environment.

Watch the video [on YouTube](https://www.youtube.com/watch?v=4odFJS134zQ)

``` shell
terraform init
terraform plan
terraform apply -auto-approve
```

<https://www.youtube.com/watch?v=l_2mLoBNFKE>

### Workflow 3 - configure the environment with a DC, adding ESX hosts, etc

``` shell
cd ../Workflow 3
```

Adjust terraform.tfvars and variables.tf files to reflect your environment.

``` shell
terraform init
terraform plan
terraform apply -auto-approve
```

Watch the video [on YouTube](https://www.youtube.com/watch?v=BMZkb3sOtpE&t=13s)

### Workflow 4 - deploy NSX-T hosts, install and configure it

``` shell
cd ../Workflow 4
```

adjust hosts.yml file and run the playbook

``` shell
ansible-playbook deploy-nsx.yml
```
