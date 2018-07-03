# bosh bootloader vsphere example

## running the scripts

1) update exports.sh with the values for your configuration
2) add BBL_VSPHERE_VCENTER_PASSWORD and BBL_VSPHERE_VCENTER_USER enivironment variables to the current shell session
3) run plan.sh
4) 

## add gitignore

/state
  /vars
    /bbl.tfvars
    /director-vars-file.yml
    /director-vars-store.yml
    /jumpbox-vars-file.yml
    /jumpbox-vars-store.yml
    /lab.tfvars
    