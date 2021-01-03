# Steam early access
**Category:** Hard
**Points:** 600
**Solves:** 20
**Description:**

>Download the file and [stella](https://www.techspot.com/downloads/7015-stella.html) . Why download the software? Because it is a game i have developed! Play the game to get the flag. You need to get masive ammounts of points. Have fun!
>
>It is possible to beat the challenge by just playing... if you have enough patience. Otherwise crack open stella manual and see what besides "playing" you can use it for.
>
>NB! Flag format is not specified here. You'll know when you have it.
>
>[awsome_game.bas.bin](./awsome_game.bas.bin)

# Write-up
by BubblyPen

I downloaded stella and then opened the game file with it. Pressed the \` key to get to the debugger. 

![](https://imgur.com/a/lw3VqJi)

Set memory address `d9` to values between `fa` and `ff` and get one kill to get the flag.

![](https://imgur.com/ORlWu9e.png)

![](https://imgur.com/M87TwQ0.png)


***Flag:*** 2600 