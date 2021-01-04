# Captcha
**Category:** Very Hard
**Points:** 800
**Solves:** 7
**Description:**

>Siin on väike tervituskaart CTF Pärnu poolt kus on kirjas ka veidi CTF-de ajaloo ja formaadi kohta. Kõik faktid ei pruugi õiged olla! (Aga see ei olegi tähtis). Leia peidetud lipp!
>
>[Greetings.pdf](./Greetings.pdf)
>
>Lipp on formaadis: CT19-####-####

# Write-up
by BubblyPen & [marcus99661](https://github.com/marcus99661)

**I did not solve this during the CTF**

I hear from a friend that the fonts weren't the same everywhere in the PDF. Found [FontForge](https://fontforge.org/en-US/) and opened the PDF with it. In the PDF there were a lot of different fonts. 

![](https://imgur.com/hneM2Z2.png)

I went thought all of the fonts. `CoolveticaRg-Regular` caught my eye. 

![](https://imgur.com/iecST9A.png)

The flag contains the numbers and letters, which don't have a corresponding character.

Flag contains the following characters:

>1, 9, -, e, b, n, n, C, T, a, c, -, u, o, z

Rearrange them and get the flag.

Rearranging them in unicode UTF-008x (in ascending order). Click on the character in fontforge to see the unicode.

***Flag:*** CT19-aczu-enno
