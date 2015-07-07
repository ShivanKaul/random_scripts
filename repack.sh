#!/usr/bin/env bash
# Keep this script in top-level of Chrome Extension project, right above contents of extension/ directory. It assumes that manifest.json file exists one level inside extension/ directory (as it should).

file="extension/manifest.json"
name=$(cat "$file" | grep "\"name\"" | cut -d ":" -f2 | cut -d "," -f1 | cut -d "\"" -f2)
version=$(cat "$file" | grep "\"version\"" | cut -d ":" -f2 | cut -d "," -f1 | cut -d "\"" -f2)
echo "Current version# of $name is: $version"
find . -type f -name "$name-*.zip" -exec rm {} +
zip -r "$name-$version".zip extension/
