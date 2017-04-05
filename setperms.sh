#!/bin/bash

cinc="config/includes.chroot"
# first blanket set permissions for everything...
chown -R root:root $cinc
chmod -R a+rX $cinc

# then handle specific exceptions which should be private
chmod -R og-rwx $cinc/etc/ssh/ssh_host*key 
chmod -R og-rwx $cinc/etc/skel-jessica

