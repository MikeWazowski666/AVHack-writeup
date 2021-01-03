# What is this?
**Category:** Bonus
**Points:** 300
**Solves:** 21
**Description:**

>What the hell is this?...
>
>Flag is in format CC20-####-####-####-####
>
>[bonus_2](./bonus_2)

# Write-up
by BubblyPen

Running `file` on the file will output that it is an ACSII text.

```bash
$ file bonus_2 
bonus_2: ASCII text, with very long lines, with no line terminators
```

Then I viewed whats inside the file I saw that the text was in brainfuck. I pasted the file content to a interpreter and got the flag.

Interpreter:

>https://www.dcode.fr/brainfuck-language

The output:

>Here is the flag haxmaster:CC20-8tKh-Ckhj-Opgh-71xDHope you had fun!!

***Flag:*** CC20-8tKh-Ckhj-Opgh-71xD