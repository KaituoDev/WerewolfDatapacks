# context: @s = player | villager not fool, @s = @n[tag=this]

effect give @e[predicate=ww:alive,distance=..10,tag=!this] slowness 1 5 true
effect give @e[predicate=ww:alive,distance=..10,tag=!this] weakness 1 200 true

effect give @e[distance=..10,tag=ww.killer_ai,type=zombified_piglin] slowness 1 5 true
effect give @e[distance=..10,tag=ww.killer_ai,type=zombified_piglin] weakness 1 200 true

effect give @e[distance=..10,tag=ww.mount] slowness 1 5 true
effect give @e[distance=..10,tag=ww.mount] weakness 1 200 true

effect give @s speed 1 2 true