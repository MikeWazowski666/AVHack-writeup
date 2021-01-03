import pytesseract
import cv2
import requests
import webbrowser
from PIL import Image

s = requests.session()
i = 1
while True:
    response = requests.get("http://ctfp.ee:9999/captcha.php")
    file = open("captcha.jpeg", "wb")
    file.write(response.content)
    file.close()

    img = Image.open("captcha.jpeg")
    pix = img.load()
    for x in range(250):
        for y in range(75):
            if pix[x,y][0] > 180 and pix[x,y][1] > 180 and pix[x,y][2] > 180:
                pix[x,y] = (255, 255, 255, 255)
            else:
                pix[x,y] = (0, 0, 0)
    new_size = tuple(2*x for x in img.size)
    img = img.resize(new_size, Image.ANTIALIAS)
    img.save("captcha.jpeg")

    text = pytesseract.image_to_string(img, config="-c tessedit_char_whitelist=23456789bcdeghjkmpqstvwyz --psm 7").replace("\x0c", "").replace("\n", "")

    if i % 100 == 0:
        print(text + ' ' + str(i))

    data = {'hash': text}
    r = s.post('http://ctfp.ee:9999/', data=data)

    if "Wrong" in r.text:
        print("uuesti " + str(i))
        i = 0

    if i == 10000:
        print(r.text)
        break

    i += 1
