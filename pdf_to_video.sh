#!/bin/sh

set -eu

if [ $# -ne 3 ]; then
	echo "Usage: $0 <NB_SEC_PER_SLIDE> <INPUT_PDF> <OUTPUT_VIDEO>"
	exit 1
fi

NB_SEC_PER_SLIDE=$1
INPUT_PDF=$2
OUTPUT_VIDEO=$3

FPS=$(echo "scale=5; 1/$NB_SEC_PER_SLIDE" | bc)
F=$(mktemp -d)
PATTERN=$F/out_%04d.png
convert -density 300 -scale 2048 $INPUT_PDF $PATTERN
ffmpeg -f image2 -y -r $FPS -i $PATTERN -q 1 $OUTPUT_VIDEO
rm -rf $F

