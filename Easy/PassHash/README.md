# PassHash
**Category:** Easy
**Points:** 200
**Solves:** 32
**Description:**

>This is what happens when you leave your password in your jean pockets and it goes thorugh a washing mahcine. It is all scrambled and broken.
>
>Retrieve the 4 parts of the password and use it to access the flag.
>
>Flag is in format: CC##-####-####-####
>
>[passhash.zip](./passhash.zip)

# Write-up
by BubblyPen

Unziping passhash.zip file will output two files: pieces.txt and flag.zip.

Pasteing the pieces to [crackstation](https://crackstation.net/) will give:

*These hashes are MD5*

>1 - 635C6C282D4385B8A6B6083D0151054D - Girl
>
>2 - 07A094A210794E74A0E5E1A1457A92EE - Word
>
>3 - EBE418AE757B121B0D636041981FC1D1 - Bird
>
>4 - 9594EEC95BE70E7B1710F730FDDA33D9 - Blue


Puting the pieces together will give the zip file passphrase. Unzip it and the flag will be there.


***Flag:*** CC20-1loa-03jf-KbxX
