#!/bin/sh
# Serve a package locally and open it in the browser.
# Usage: ./serve.sh [-c|--caedm | -g|--github] [-p|--port N]   (default: --caedm, port 8000)
cd "$(dirname "$0")"
pkg=caedm; port=8000
while [ $# -gt 0 ]; do
  case "$1" in
    -c|--caedm) pkg=caedm ;;
    -g|--github) pkg=github-pages ;;
    -p|--port) shift; port=$1 ;;
    -h|--help) sed -n '2,3p' "$0"; exit 0 ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
  shift
done
echo "Serving $pkg at http://localhost:$port/  (Ctrl-C to stop)"
( sleep 1; { open "http://localhost:$port/" || xdg-open "http://localhost:$port/"; } >/dev/null 2>&1 ) &
exec python3 -m http.server "$port" --directory "$pkg"
