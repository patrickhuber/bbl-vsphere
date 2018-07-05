# bosh bootloader vsphere example

## setting up an environment

1) update exports.sh with the values for your configuration
2) add BBL_VSPHERE_VCENTER_PASSWORD and BBL_VSPHERE_VCENTER_USER enivironment variables to the current shell session
3) modify /patches/lab/vars/lab.tfvars with the director_internal_ip, jumpbox_ip, internal_reserved_ips and internal_static_ips
   - if you don't need these variables, remove them from the patches/lab/vars/lab.tfvars and remove them from  patches/lab/terraform/lab.tf
4) run the `plan` shell script
5) run the `up` shell script

## add gitignore

A git ignore with the following contents will remove secrets from source control:

> .gitignore

```
state/bosh-deployment
state/jumpbox-deployment
state/cloud-config
state/vars/jumpbox-vars-store.yml
state/vars/director-vars-store.yml
```

## whats going on?

1) the patches/lab/ directory is a plan patch
2) internal_reserved_ips and internal_static_ips are override varibles from the cloud config. In order to get processed they need to have the same name as the property in the cloud config and be present as a terraform variable in the patches/lab/terraform/lab.tf file.
3) the actual values are defined in the patches/lab/vars/lab.tfvars file
4) the plan script copies the plan patch into the state directory
