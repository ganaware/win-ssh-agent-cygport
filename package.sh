#!/bin/bash

PVR=`basename win-ssh-agent-*.cygport .cygport`

rm -rf /usr/src/win-ssh-agent*
rm -f $PVR.tar.bz2
rm -f ${PVR}-src.tar.bz2
cygport ./$PVR.cygport finish

cygport ./$PVR.cygport download

cygport ./$PVR.cygport prep
cp CYGWIN-PATCHES/* $PVR/src/win-ssh-agent/CYGWIN-PATCHES/
if [ ! -d $PVR/src/win-ssh-agent/CYGWIN-PATCHES/ ]; then exit; fi

cygport ./$PVR.cygport compile

cygport ./$PVR.cygport install

cygport ./$PVR.cygport package
