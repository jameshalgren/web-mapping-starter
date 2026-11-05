#!/bin/sh
# Build the two student-downloadable zips into dist/.
# Files sit at the TOP LEVEL of each zip so they unzip straight into www/.
set -e
cd "$(dirname "$0")"
mkdir -p dist
rm -f dist/*.zip
for p in caedm github-pages; do
  (cd "$p" && zip -rq "../dist/web-map-$p.zip" . -x '.DS_Store')
done
ls -l dist
