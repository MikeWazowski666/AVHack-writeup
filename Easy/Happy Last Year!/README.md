# Happy Last Year!
**Category:** Easy
**Points:** 200
**Solves:** 51
**Description:**

>It is almost New Year. So have this celebratory challenge.
>
>Flag is in format: CC##-####-####-####-####
>
>Happy new year!
>
>it_is_almost_here.zip

# Write-up
by BubblyPen

If the .zip file is extracted there will be 2 files: a picture and an suspicious file (zip.tar.7z.xy.rar)

Running strings on the image will get half of the flag.

```bash
$ strings happylastyear.jpg
``` 

>CC20-h1dd-3nR1

To get the second half of the flag you had to run file on the zip.tar.7z.xy.rar file
```bash
$ file zip.tar.7z.xy.rar
zip.tar.gz.7z.xy.rar: gzip compressed data, was "part2", last modified: Tue Dec 29 13:46:38 2020, from UNIX, truncated
```
Then renamed the file and gunzipped it
```bash
$ mv zip.tar.7z.xy.rar zip.tar.7z.xy.rar.gz
$ gunzip zip.tar.7z.xy.rar.gz
```
It will output a file which is an ASCII text file. Opening it will give the other half of the flag.
```bash
$ file zip.tar.gz.7z.xy.rar
zip.tar.gz.7z.xy.rar: ASCII text
$ cat zip.tar.gz.7z.xy.rar
-ghtH-3r3!
```
>-ghtH-3r3!

***Flag:*** CC20-h1dd-3nR1-ghtH-3r3!
