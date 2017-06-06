#!/bin/bash

set -o pipefail -o errexit -o nounset -o xtrace

cd $(dirname ${BASH_SOURCE})

version=3.5.0

curl -LO https://github.com/hakimel/reveal.js/archive/$version.zip
unzip $version.zip
rm reveal.js-$version/{README.md,index.html}
mv reveal.js-$version/* .
rm -rf CONTRIBUTING.md  demo.html test/ reveal.js-$version/ $version.zip
