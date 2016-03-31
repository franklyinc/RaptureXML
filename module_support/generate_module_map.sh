#!/bin/sh

echo `pwd`
export XCODE_DEVELOPER_DIR=`xcode-select -p`
cp module_map.template RaptureXML.modulemap
sed -e "s|{XCODE_DEVELOPER_DIR}|$XCODE_DEVELOPER_DIR|g" ./module_map.template > ./RaptureXML.modulemap
