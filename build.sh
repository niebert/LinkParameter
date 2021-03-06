#!/bin/sh
echo "(1) DIST: cp src/linkparam.js dist/linkparam.js"
cp src/linkparam.js dist/linkparam.js
echo "(2) DOCS: cp src/linkparam.js docs/js/linkparam.js"
cp src/linkparam.js docs/js/linkparam.js
echo "(3) MAIN: cp src/linkparam.js src/main.js"
cat src/header.js > src/main.js
cat src/linkparam.js >> src/main.js
cat src/tail.js >> src/main.js
echo "src/main.js created DONE"
npm run build2dist
npm run build
echo "(3) build DONE"
npm run compress
echo "(4) compress DONE"
