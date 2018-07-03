#!/bin/bash
if [[ -z "$DIR" ]]; then
   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
fi
export BBL_STATE_DIRECTORY=$DIR/state
export BBL_ENV_NAME=lab
export BBL_IAAS=vsphere
export BBL_VSPHERE_VCENTER_IP=192.168.1.110
export BBL_VSPHERE_VCENTER_DC=homelab
export BBL_VSPHERE_VCENTER_CLUSTER=homelab_cl1
export BBL_VSPHERE_VCENTER_RP=homelab_rp1
export BBL_VSPHERE_NETWORK="VM Network"
export BBL_VSPHERE_VCENTER_DS=DAS
export BBL_VSPHERE_SUBNET=192.168.1.0/24
export BBL_VSPHERE_VCENTER_DISKS=bbl_disks
export BBL_VSPHERE_VCENTER_TEMPLATES=bbl_templates
export BBL_VSPHERE_VCENTER_VMS=bbl_vms
