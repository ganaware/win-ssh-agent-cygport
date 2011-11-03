#!/bin/bash

PVR=`basename win-ssh-agent-*.cygport .cygport`

cygport $PVR finish
cygport $PVR download
cygport $PVR prep
cp CYGWIN-PATCHES/* $PVR/src/win-ssh-agent/CYGWIN-PATCHES/
cygport $PVR compile
cygport $PVR install
cygport $PVR package
