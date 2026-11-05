#!/bin/sh
# Build the student-downloadable zip into dist/.
# Files sit at the TOP LEVEL of the zip so it unzips straight into www/ or a repo root.
set -e
cd "$(dirname "$0")"
mkdir -p dist
rm -f dist/*.zip
(cd site && zip -rq ../dist/web-map-starter.zip . -x '.DS_Store')
ls -l dist
