#!/bin/bash
cp template/tet-vehicle-display.rb Casks/tet-vehicle-display.rb
curl --silent --remote-name https://pto-api.transhub.io/vdtools/VERSION.txt
export VERSION=$(cat VERSION.txt)
curl --silent --remote-name https://pto-api.transhub.io/vdtools/macos/tet-vehicle-display_macos_v$VERSION.tar.gz
export SHA256=$(shasum -a 256 tet-vehicle-display_macos_v$VERSION.tar.gz | awk '{print $1}')

echo "Creating Cask for TET Vehicle Display v$VERSION with SHA256 $SHA256"

sed -i -e "s/{{VERSION}}/$VERSION/g" Casks/tet-vehicle-display.rb
sed -i -e "s/{{SHA256}}/$SHA256/g" Casks/tet-vehicle-display.rb
