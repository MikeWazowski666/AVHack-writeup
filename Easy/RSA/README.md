# RSA
**Category:** Easy
**Points:** 200
**Solves:** 23
**Description:**

>Mis on failis olev sõnum?
>
>flag.enc
>
>key.pem


# Write-up
by BubblyPen

By using this command, you will get the flag:

```bash
openssl rsautl -decrypt -inkey *.pem -in flag.enc -out randompassword.decrypted
```

***Flag:*** Head vana aasta lõppu ja head uue algust! Järgmine aasta on võtme pikkuseks 2021.
