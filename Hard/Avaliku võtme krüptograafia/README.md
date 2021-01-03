# Avaliku võtme krüptograafia
**Category:** Hard
**Points:** 600
**Solves:** 8
**Description:**

>Mis on failis olev sõnum?
>
>[message](./message)
>
>[private.key](./private.key)


# Write-up
by BubblyPen

**I didn't solve this during the CTF**

After the CTF I got a hint from a friend that the encryption was made with PyNaCl. So I searched for `PyNaCl public key cryptography`. And it led me to [this site](https://pynacl.readthedocs.io/en/latest/public/). From there I found examples of public key encryptions in PyNaCl. I followed the examples and came up with [this script](./decrypt.py).


```python
#!/bin/python3
#
#==================================
#		Written by BubblyPen
#==================================

#Imports
import nacl.utils
from nacl.public import PrivateKey, Box

#Open files
enc = open('message', 'rb')
encrypted = enc.read()
enc.close()

secKey = open('private.key', 'rb')
sk = secKey.read()
secKey.close()

#Creates box instance
sk = nacl.public.PrivateKey(sk)
pk = sk.public_key
box = Box(sk, pk)

#Decrypting and printing out the flag
print(box.decrypt(encrypted))

```

The code I wrote worked and got me the flag.

***Flag:*** KüberPähkel 2019