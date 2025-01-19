# context: server, %started ww.system == 1

# note: time main -> turn night -> elimination finalize -> masochist ending
execute if function ww:time/main run return 0

execute if function ww:ending/main run return 0

function ww:game/bar/main

execute as @a[predicate=ww:alive] at @s run function ww:player/alive_main
execute as @e[predicate=ww:alive,type=villager] at @s run function ww:ai/alive_main

# grave particles
function ww:skill/shovel/grave/main

# glow up rainbow effect
execute if score %rainbowGlow ww.system matches 1.. run function ww:skill/glow_up/rainbow

# immune particles
execute at @e[predicate=ww:alive,predicate=!ww:is_invisible,scores={ww.immune=1..}] run particle flame ~ ~ ~ 1 1 1 0 1 normal @a[distance=1..]

# ninja smoke
execute at @e[type=marker,tag=ww.ninjaSmokePoint] run particle dust{color:[1.000,1.000,1.000],scale:4} ~ ~ ~ 3 3 3 0 30 force

# za warudo effects
scoreboard players remove @e[scores={ww.za_warudo=1..}] ww.za_warudo 1
execute as @e[scores={ww.za_warudo=0..}] at @s run function ww:skill/za_warudo/main

# clear iron golem produced by villagers
scoreboard players set @e[type=minecraft:iron_golem] ww.gracefulClean 30

# prevent sleeping
execute as @a[predicate=ww:player,scores={ww.isSleeping=1..}] run function ww:player/wake_up

# teleport to ai
execute as @a[scores={ww.navigateToAI=1..}] run function ww:narrator/navigate/main

# skip night for lunatic mode
execute if score %lunaticSkipNight ww.system matches 1.. run function ww:skill/lunatic_sword/skip_night