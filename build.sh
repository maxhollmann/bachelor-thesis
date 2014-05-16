#!/usr/bin/env sh

rm -r build
mkdir build
latexmk -pvc -pdf -jobname=build/Paper main.tex
