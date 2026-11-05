# Web Map Starter (CAEDM)

A starter web map: a global basemap on the left, a legend and a notes box on the right.
Your job is to use an AI assistant to add your own layer(s) (see the assignment:
https://byu-hydroinformatics.github.io/cce114-geomatics/assignments/web-mapping-with-ai/).

## Deploy
1. Unzip this package into the **`www`** folder of your CAEDM home directory (the J: drive),
   so that `www/index.html` exists. Do not leave it inside an extra subfolder.
2. Open `http://www.et.byu.edu/~YOUR_CAEDM_USERNAME` in a private/incognito window.
3. If you get a "forbidden" error, CAEDM's
   [Web Space page](https://caedm.et.byu.edu/wiki/index.php/Web_Space) says you may need to set
   `.htaccess` permissions, or ask CAEDM support.

## Add your data
Export from QGIS as GeoJSON (EPSG:4326), save it next to `index.html` as `data.geojson`,
then ask your AI assistant to modify `index.html` to display it. See `PROMPTS.md`.

## Test locally
```
python3 -m http.server 8000
```
then open http://localhost:8000. (Opening index.html by double-click will not load GeoJSON.)
