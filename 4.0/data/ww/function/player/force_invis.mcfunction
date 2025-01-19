# context: @s = player | villager

scoreboard players remove @s ww.forceInvis 1
execute if predicate ww:is_masked run function ww:player/unmask
effect give @s invisibility 1 0 true

execute if score @s ww.forceInvis matches ..0 run effect clear @s invisibility