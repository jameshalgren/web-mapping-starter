# web-mapping-starter

Starter package for the CCE 114 *Web Mapping with AI Experience* assignment
(https://byu-hydroinformatics.github.io/cce114-geomatics/assignments/web-mapping-with-ai/).

- `site/` : the package students get. A MapLibre GL page (OpenFreeMap/Carto basemap with
  light/dark styling): map on the left, legend + notes on the right. All paths are relative,
  so it works from any folder: unzip into a CAEDM `www` folder
  (`http://www.et.byu.edu/~USERNAME`) or upload to a GitHub Pages repo. Deploy steps for both
  are in `site/README.md`.
- `./build.sh` writes `dist/web-map-starter.zip` for students.
- `./serve.sh [-p PORT]` serves `site/` locally and opens it in the browser.
