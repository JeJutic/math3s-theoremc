#!/bin/bash -e

find "./lection/$1/screen" -type f -name '*.pdf' \
  -exec gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen \
        -dNOPAUSE -dQUIET -dBATCH -sOutputFile=temp.pdf {} \; \
  -exec mv temp.pdf {} \;
