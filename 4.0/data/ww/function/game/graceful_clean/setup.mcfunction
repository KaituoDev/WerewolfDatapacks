# context: @s = some entity

scoreboard players set @s ww.gracefulClean 40

data modify entity @s Tags set value []
execute at @s as @a[gamemode=spectator,distance=..1] run spectate @n[predicate=ww:alive]