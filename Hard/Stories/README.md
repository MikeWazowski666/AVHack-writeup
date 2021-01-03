# Stories
**Category:** Hard
**Points:** 600
**Solves:** 13
**Description:**

>Check out this story generator. It makes being an author easy!
>
>Flag is in format: CT##-####-####-####
>
>You can access the site [here](http://ctfp.ee:8888/)

# Write-up
by BubblyPen

Searching on Google for `Flask and Jinja2 template vuln` will tell you that it is an SSTI (Server-side template injection). I found [this](https://pequalsnp-team.github.io/cheatsheet/flask-jinja2-ssti) site which tells the basics of SSTI. By probing the Authors name with `{{7*'7'}}` will make the author name `7777777`. We have our PoC. Now we need to find the flag. From the webpage I found Global Variables. Tried changing the authors name to `{{config}}` . A lot of configurations came up.

![](https://imgur.com/NlLFyMw.png)

From there I searched for the flag format and found that it was the secret key.

***Flag:*** CT20-aThy-61gF-ax0T
