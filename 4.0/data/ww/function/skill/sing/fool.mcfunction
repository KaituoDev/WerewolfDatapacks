# context: @s = player | villager fool, @s = @n[tag=this]

effect give @e[predicate=ww:alive,distance=..10,tag=!this] speed 1 2 true

effect give @e[distance=..10,tag=ww.killer_ai,type=zombified_piglin] speed 1 2 true

effect give @e[distance=..10,tag=ww.mount] speed 1 2 true

effect give @s speed 1 2 true