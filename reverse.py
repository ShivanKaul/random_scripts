#!/usr/bin/env python

import os

source_dir = "/Users/shivan/dev/chromium_install/depot_tools" # the folder you copied the files from
target_folder = "/Users/shivan/dev" # the folder you copied the files to

for root, dirs, files in os.walk(source_dir):
    for name in files:
        try:
            os.remove(target_folder+"/"+name)
        except FileNotFoundError:
            pass
