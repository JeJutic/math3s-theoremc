#!/bin/bash -e

./gen_pdf.sh "$1"

echo "Uniting screen pdfs..."
cd "lection/$1/screen"
pdfunite $(find . -type f -name '*.pdf' | sort) ../screen.pdf
cd ..
pdfunite conspect.pdf screen.pdf conspect_screen.pdf
cd ../..

echo "Uniting all conspects pdfs..."
pdfunite $(find . -type f -path './lection/*' -name 'conspect.pdf' | sort | tr '\n' ' ') \
  full_conspect.pdf
pdfunite $(find . -type f -path './lection/*' -name 'conspect_screen.pdf' | sort | tr '\n' ' ') \
  full_conspect_screen.pdf

echo "Done"
