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

I downloaded stella and then opened the game file with it. Pressed the \` key to open the debugger. 

![](https://imgur.com/e5zoGue.png)

I tested out different memory addresses, and found that memory address `00d9` was vulnerable. So I set memory address `00d9` to values between `fa` and `ff`. After seting the value I tested by playing the game, what would happen if address `00d9` was set to `fa` - `ff`. Nothing changed in the UI. So I played till I got a kill and then the game ended.

![](https://imgur.com/ORlWu9e.png)

![](https://imgur.com/M87TwQ0.png)


***Flag:*** 2600 
