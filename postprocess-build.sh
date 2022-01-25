#!/usr/bin/env sh

# Rename build/html/ into build/doc/ for more convenient url.
# The url root is radiocc/doc/build.
mv radiocc/doc/build/html radiocc/doc/build/doc

# Having this file in root allows using underscore folders (Sphinx css
# is there).
touch radiocc/doc/build/.nojekyll

# Write root index.html that redirects users to radiocc/doc/build/doc/
# folder.
mkdir -p radiocc/doc/build
echo '<meta http-equiv="refresh" content="0; url=./doc/" />' \
    >> radiocc/doc/build/index.html
