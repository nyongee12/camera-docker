#!/bin/bash
for x in /camera/bin/*; do
	cp "$x" /bin/
	chmod +x /bin/$(basename $x)
done
