# Self-Refential
**Category:** Medium
**Points:** 400
**Solves:** 17
**Description:**

>See number ongi vastus! Kui ta õigesse valemisse panna... me teame, et selle alusel on võimalik joonistada graafikule lipp
>
>Lisaks me teame, et see valem peaks suutma kuvada "Kõike"
>
>[self_referential.txt](./self_referentital.txt)
>
>FLAG on formaadis: CC19-####-####-####

# Write-up
by BubblyPen

I searched for *self-referentital* on Google and found [this](https://en.wikipedia.org/wiki/Self-reference) article. There I found the [Tupper's self-referential formula](https://en.wikipedia.org/wiki/Tupper%27s_self-referential_formula). Then I searched for *Tuppers formula python*. Came across [Tupper module](https://pypi.org/project/tupper/) in python. Downloaded it and ran it.

```bash
$ python3 -m tupper --k 679395046176220654778909645564487745179426638900069091067412376085534747582137704604658786710593352233311968901818974119858128463428363605840485112083615456138030923383314860912100472056532450469804657019813580438720631585635463213692041234199528769442608781087911608710662634946564534542076680727999655833945395280424928189172019773868737348970207669942588937189764466366779829249960458239109411593481131170645616577715238373982907277568426337161067151557340515667448137322650881025740750768559073100363728576330688
```

![](./tupper.png)

***Flag:*** CC19-5rAk-LocY-r1q1
