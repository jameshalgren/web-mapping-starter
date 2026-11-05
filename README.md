# web-mapping-starter

Starter packages for the CCE 114 *Web Mapping with AI Experience* assignment
(https://byu-hydroinformatics.github.io/cce114-geomatics/assignments/web-mapping-with-ai/).

- `caedm/` : unzip into the `www` folder of a CAEDM home directory
  (served at `http://www.et.byu.edu/~USERNAME`).
- `github-pages/` : upload to the root of a public GitHub repo and enable Pages.

Both contain the same `index.html` (MapLibre GL, OpenFreeMap/Carto basemap with light/dark
styling, map on the left, legend + notes on the right); only the README differs. All paths are
relative, so the page works from any folder. `./build.sh` checks the two copies match and
writes `dist/web-map-caedm.zip` and `dist/web-map-github-pages.zip` for students.
