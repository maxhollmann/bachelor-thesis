#!/usr/bin/env sh

mkdir build
latexmk -pvc -pdf -jobname=build/Paper main.tex
