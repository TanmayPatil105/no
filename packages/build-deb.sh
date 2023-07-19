#!/bin/bash

echo "Building the binary..."
make -C ..

if [ -d "debian-package" ]; then
  rm -rf debian-package
fi

echo "Creating 'debian-package' directory..."
mkdir -p ./debian-package
mkdir -p ./debian-package/DEBIAN
mkdir -p ./debian-package/usr/bin

echo "Copying files to the package structure..."
cp ../debian/control ./debian-package/DEBIAN/control
cp ../no ./debian-package/usr/bin/no

echo "Creating Debian package..."
dpkg-deb --build ./debian-package ./no_deb_amd64.deb

echo "DEB package built successfully"