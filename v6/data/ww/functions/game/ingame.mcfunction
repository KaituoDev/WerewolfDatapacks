execute if predicate ww:mode/riot run function ww:game/ingame/riot
execute if predicate ww:mode/debate run function ww:game/ingame/debate

execute as @a[tag=alive] run function ww:skill/radio/main

# Player Dead
execute as @a[scores={dead=1..}] run function ww:player/dead

# Spectator Effects
effect give @a[tag=!alive] night_vision 1000000 0 true

# Gacha Mode, Obtain Ultimates
execute if predicate ww:night as @a[tag=alive,scores={materials=5..}] run function ww:gacha/prize/ultimate

execute unless score %debugging system matches 1 unless entity @a[predicate=!ww:god,scores={dead=1..}] run function ww:ending/main