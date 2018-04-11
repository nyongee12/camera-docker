#!/bin/bash
exec 3<>/dev/tcp/$CameraIP/1111
echo -n $1>&3
cat <&3
echo ""
exec 3>&-

