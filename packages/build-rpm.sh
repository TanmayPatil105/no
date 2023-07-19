#!/bin/bash

BUILD_DIR=rpm-package

echo "Building the binary..."
make -C ..

if [ -d $BUILD_DIR ]; then
  rm -rf $BUILD_DIR
fi

echo "Creating 'rpm-package' directory..."
mkdir -p $BUILD_DIR//{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}

echo "Copying files to the package structure..."
cp ../rpm/no.spec ./$BUILD_DIR/SPECS/no.spec
cp ../no $BUILD_DIR/SOURCES/no

echo "Creating RPM package..."
rpmbuild -ba ./$BUILD_DIR/SPECS/no.spec

cp ./$BUILD_DIR/RPMS/*/*.rpm ./no.rpm

echo "RPM package built successfully"