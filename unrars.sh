#!/bin/bash

find -name "*.rar" -exec rename 's/\s//g' {} \;

filelist=$(find -name "*.rar")

mkdir -m 777 pdf
for file in $filelist
do
    echo $file
    `rar x  $file  pdf`
done

cd pdf

filelist=$(find -name "*.png" -exec rename 's/[^0-9]//g' {}  \; )

    list=$(find -name "*[0-9]" )
    for ll in $list:
    do
        mv $ll $ll.png
    done



