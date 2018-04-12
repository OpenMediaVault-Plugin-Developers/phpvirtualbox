#!/bin/sh

cd "$(dirname "$0")"

# Get current version.
version=$(dpkg-parsechangelog --show-field Version | cut -d- -f-2)

# Download the source.
if [ ! -f "${version}.tar.gz" ]; then
  wget https://github.com/phpvirtualbox/phpvirtualbox/archive/${version}.tar.gz -O ${version}.tar.gz
fi

# Extract files.
if [ -f "${version}.tar.gz" ]; then
  tar xvfz ${version}.tar.gz

  # Copy the debian/ directory to the source directory.
  cp -rv debian/ phpvirtualbox-$version/
fi
