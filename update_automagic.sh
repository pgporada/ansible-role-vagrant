#!/bin/bash
VERSION=$1

function usage {
    echo -e "
    USAGE EXAMPLES:

        ./$(basename $0) 0.8.7
        ./$(basename $0) 1.0.2
    "
}

if [ $# -ne 1 ]; then
    usage
    exit 1
fi

echo "+) Updating occurrences of vagrant_version"
find . -type f -not -path "*.git/*" -exec sed -i "s|vagrant_version: [[:digit:]]\+\.[[:digit:]]\+\.[[:digit:]]\+|vagrant_version: ${VERSION}|g" {} \;

echo "+) Updating the badge in the README.md"
sed -i "/img.shields.io\/badge\/Supports/c\[\![](https://img.shields.io/badge/Supports%20Vagrant%20Version-${VERSION}-blue.svg)](https://github.com/hashicorp/vagrant/blob/v${VERSION}/CHANGELOG.md)" README.md

git status
