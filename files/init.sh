#!/bin/sh

script="$(dirname $0)/init.sh"
# => virt manager network
virsh net-start default
virsh net-autostart default

rm -rf $script
