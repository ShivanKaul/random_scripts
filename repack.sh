#!/usr/bin/env bash

# WHAT:
# Pack Chrome Extensions as zips for deploying on the Web Store.

# HOW:
# Keep this script in top-level of Chrome Extension project, right above contents of extension/ directory. 
# It assumes that manifest.json file exists one level inside extension/ directory (as it should).

# It checks the current version from the manifest file, and repacks the source code into a new version-numbered zip,
# deleting the previous versioned zip.

# Note: Removes .DS_Stores before packaging, if on Mac.

file="extension/manifest.json"
name=$(cat "$file" | grep "\"name\"" | cut -d ":" -f2 | cut -d "," -f1 | cut -d "\"" -f2)
version=$(cat "$file" | grep "\"version\"" | cut -d ":" -f2 | cut -d "," -f1 | cut -d "\"" -f2)
echo "Current version# of $name is: $version"
find . -type f -name "$name-*.zip" -exec rm {} +

if [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX, so remove all .DS_Stores
	echo "Removing .DS_Stores..."
        find . -name ‘*.DS_Store’ -type f -delete
	echo "Done."
fi

zip -r "$name-$version".zip extension/
