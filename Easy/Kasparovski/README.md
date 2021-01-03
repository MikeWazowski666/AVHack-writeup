# Kasparovski
**Category:** Easy
**Points:** 200
**Solves:** 15
**Description:**

>Chessmaster was beaten! Discover the culprit by finding the flag
>
>[how_do_i_win.png](./how_do_i_win.png)

# Write-up
by BubblyPen

Opening the picture will output a chessboard with pieces on it.

![]how_do_i_win.png

Decoding chesspieces to binary will give:

>01100100 01100101 01100101 01110000 01100010 01101100 01110101 01100100

And using a binary to ACSII converter will give:
>deepblud

There is a typo in the flag. It should end with 01100101 (in ACSII 'e')

***Flag:*** deepblue
