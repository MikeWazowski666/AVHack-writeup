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