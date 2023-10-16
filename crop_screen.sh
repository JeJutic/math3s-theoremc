#!/bin/bash -e

qpdf "lection/$1/screen/$2.pdf" --replace-input --pages . 1-"$3" --
