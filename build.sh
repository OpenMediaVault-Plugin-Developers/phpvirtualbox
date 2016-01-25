#!/bin/sh

cd "$(dirname "$0")"

# Get current version.
version=$(dpkg-parsechangelog --show-field Version | cut -d- -f-2)

# Change directory.
cd phpvirtualbox-$version/

# Package.
debuild -us -uc
debuild clean
