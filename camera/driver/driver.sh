#!/bin/bash
exec 3<>/dev/tcp/$CameraIP/1234
echo -n $1>&3
if [ "$1" == "get-frame" ]; then
	cat <&3 > "/camera/frame.jpg"
	echo "/camera/frame.jpg"
else
	cat <&3
	echo ""
fi
exec 3>&-

