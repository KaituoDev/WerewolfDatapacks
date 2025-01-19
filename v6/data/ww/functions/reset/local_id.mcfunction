scoreboard players reset * localId
scoreboard players set %current localId 0

execute as @a[tag=alive,sort=random] run function ww:player/id/local