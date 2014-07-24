#!/usr/bin/env sh

rm -r build/*
cat references.bib | \
  grep -v "note = " | \
  grep -v "urldate = " | \
  grep -v "url = " | \
  grep -v "month = " | \
  sed -e "s/_????/_nodate/" | \
  sed -e "s/Manuscript in preparation/{Manuscript in preparation}/" | \
  sed -e 's/ä/{\\"a}/g' | \
  sed -e 's/ö/{\\"o}/g' | \
  sed -e 's/ü/{\\"u}/g' \
  > clean_references.bib

# latexdiff first-draft.tex main.tex > diff.tex
# ruby newlines.rb diff.tex > diff-n.tex
latexmk -pv -pdf -jobname=build/Paper diff-n.tex
