#!/bin/bash

echo Name the VM
read hostName

echo Specify the VM memory
read memory

echo Select the iso to use
read -e iso

echo Specify the VM disk size
read disk

virt-install \
--name $hostName \
--memory $memory \
--vcpus 1 \
--disk /mnt/data/Windows_VMs/$hostName.qcow2,size=$disk,bus=virtio,format=qcow2 \
--cdrom $iso \
--disk /mnt/data/iso/virtio-win-0.1.196.iso,device=cdrom,bus=sata \
--network default,model=virtio \
--os-variant win2k16 \
--console pty,target_type=serial \
--check all=off \
--boot cdrom
