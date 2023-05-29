#!/bin/bash


if [[ $(id -u) -ne 0 ]]; then
    echo "This script must be run as root."
    exit 1
fi


if [[ $# -eq 0 ]]; then
    echo "Please provide a package name as a command line argument."
    exit 1
fi

package_name=$1


echo "Installing package: $package_name"
apt-get install "$package_name"

