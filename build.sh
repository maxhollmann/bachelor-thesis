#!/usr/bin/env sh

rm -r build/*
latexmk -p -pdf -jobname=build/Paper main.tex
