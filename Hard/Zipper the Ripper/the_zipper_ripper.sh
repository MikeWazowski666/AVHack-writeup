#!/bin/bash
#
#==================================================
#		Written by BubblyPen
#==================================================
#
filename=$1

rm -r tmp
mkdir tmp
cp $filename tmp
cd tmp

while [ 1 ]
do
	file $filename | grep "tar"
	if [ "$?" -eq "0" ]
	then
		echo "{File}: Tar"
		mv $filename $filename.tar
		tar -xf $filename.tar
		rm $filename.tar
		filename=$(ls *)
	fi

	file $filename | grep "Zip"
	if [ "$?" -eq "0" ]
	then
		echo "{File}: zip"
		mv $filename $filename.zip
		unzip $filename.zip
		rm $filename.zip
		filename=$(ls *)
	fi
	
	file $filename | grep "gzip"
	if [ "$?" -eq "0" ]
	then
		echo "{File}: gzip"
		mv $filename $filename.gz
		gunzip $filename.gz
		rm $filename.gzip
		filename=$(ls *)
	fi

	file $filename | grep "ASCII"
	if [ "$?" -eq "0" ]
	then
		cat $filename > ../flag.txt
		cat ../flag.txt
		break
	fi
done
filename=$1

rm -r tmp
mkdir tmp
cp $filename ~/ctf/avhack/zipper/tmp

cd ~/ctf/avhack/zipper/tmp
while [ 1 ]
do
        file $filename 

        file $filename | grep "tar"
        if [ "$?" -eq "0" ]
        then
                echo "{File}: Tar"
                mv $filename $filename.tar
                tar -xf $filename.tar
                rm $filename.tar
                filename=$(ls *)
        fi

        file $filename | grep "Zip"
        if [ "$?" -eq "0" ]
        then
                echo "{File}: zip"
                mv $filename $filename.zip
                unzip $filename.zip
                rm $filename.zip
                filename=$(ls *)
        fi

        file $filename | grep "gzip"
        if [ "$?" -eq "0" ]
        then
                echo "{File}: gzip"
                mv $filename $filename.gz
                ls
                gunzip $filename.gz
                rm $filename.gzip
                filename=$(ls *)
        fi
        file $filename | grep "ASCII"
        if [ "$?" -eq "0" ]
        then
                cat $filename > ../flag.txt
                break
        fi
done
