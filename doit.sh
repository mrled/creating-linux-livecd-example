#!/bin/bash

if [ -e build.log ]; then mv build.log build.log.old; fi

./setperms.sh

lb clean && \
    lb config && \
    lb build 2>&1 | tee build.log && \
    scp binary-hybrid.iso me@fileserver:/srv/isos/alblacore.iso
