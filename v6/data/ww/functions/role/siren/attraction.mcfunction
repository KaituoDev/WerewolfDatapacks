## Running as player with attraction score

function ww:particles/attraction

tag @s add this

execute as @a[tag=alive,distance=..10,tag=!this] at @s run tp @s ~ ~ ~ facing entity @e[tag=this,limit=1] feet
# execute as @e[tag=alive,distance=..10,tag=!this] at @s run function ww:role/siren/charm

# execute as @e[type=armor_stand,tag=attraction] at @s run function ww:role/siren/charm/validate

execute if entity @s[tag=!fool] run effect give @a[tag=alive,distance=..10,tag=!this] slowness 1 5 true
execute if entity @s[tag=!fool] run effect give @a[tag=alive,distance=..10,tag=!this] weakness 1 200 true
effect give @s[tag=!fool] speed 1 2 true

execute if entity @s[tag=fool] run effect give @a[tag=alive,distance=..10,tag=!this] speed 1 2 true
effect give @s[tag=fool] slowness 1 5 true

tag @s remove this