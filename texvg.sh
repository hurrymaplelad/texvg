#!/bin/bash

texFile=$1
file=$(dirname $texFile)/$(basename $texFile .tex)
echo $texFile $file `pwd`

lualatex \
  --output-format=dvi \
  --halt-on-error \
  "$texFile" \
&& dvisvgm \
  --libgs=/usr/local/lib/libgs.dylib \
  "${file}.dvi"

rm ${file}.{dvi,log,aux}
