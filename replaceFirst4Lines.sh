#!/bin/bash
if [ -z "$*" ]; then echo "No args"; fi
for old in "$1/"*.htm; do echo $old; mv $old "$1/"`basename $old .htm`.xhtml; done
for i in "$1"*.xhtml;
  do
    echo $i
    sed -i '' -e 's/align="center"/style="text-align:center"/g' $i
    sed -i '' -e 's/&nbsp;/\&#160;/g' $i
    sed -i '' -e 's/&ndash;/\&#8211;/g' $i
    sed -i '' -e 's/&ldquo;/\&#8220;/g' $i
    sed -i '' -e 's/&rdquo;/\&#8221;/g' $i
    sed -i '' -e 's/&lsquo;/\&#8216;/g' $i
    sed -i '' -e 's/&rsquo;/\&#8217;/g' $i
    sed -i '' -e 1,3d $i;
    sed -i '' -e '1s/.*/<?xml version="1.0" encoding="UTF-8" standalone="no"?>\
    <!DOCTYPE html>\
    <html xmlns="http:\/\/www.w3.org\/1999\/xhtml" xmlns:epub="http:\/\/www.idpf.org\/2007\/ops" xml:lang="en" lang="en">\
    <head>/' $i;
  done
