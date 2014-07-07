#!/usr/bin/env sh

rm -r build/*
cat references.bib | \
  grep -v "note = " | \
  grep -v "urldate = " | \
  grep -v "url = " | \
  sed -e "s/_????/_nodate/" | \
  sed -e "s/Manuscript in preparation/{Manuscript in preparation}/" \
  > clean_references.bib
latexmk -pvc -pdf -jobname=build/Paper main.tex

#  sed -e "s/title = {Beta Oscillatory Activity Indexes Time Estimation},/title = {Beta Oscillatory Activity Indexes Time Estimation}, year = {in preparation},/" \
