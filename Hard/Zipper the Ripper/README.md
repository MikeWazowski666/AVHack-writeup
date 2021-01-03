# Zipper the Ripper
**Category:** Hard
**Points:** 600
**Solves:** 24
**Description:**

>The flag is there in that zip file. But you soon shall discover a problem: It is long way to the bottom of that archive file. So get going.
>
>Flag is in format: CC##-####-####-####-####
>
>[zipperRipper10000.gzip](./zipperRipper10000.gzip)

# Write-up
by BubblyPen

This challange is 10000 archives deep. Manualy doing this will take about 4 hours. So I wrote this bash script to crawl these archives automaticaly. When the script is finished, it will create a flag.txt file which contains the flag. It will also `cat` out the flag.

```bash
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
		ls
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
```

***Flag:*** CC20-m4g1-c4lz-1ppi-ng!!
