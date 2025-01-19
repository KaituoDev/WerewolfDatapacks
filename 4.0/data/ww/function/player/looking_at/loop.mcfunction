# context: @s = player
# scores: %ray ww.var
# output: ww:output lookingAt (UUID)

execute if score %ray ww.var matches ..0 run return 0

#particle happy_villager ~ ~ ~ 0 0 0 0 1 force

execute positioned ^ ^ ^0.25 as @e[dx=0,predicate=ww:alive,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run \
  return run data modify storage ww:output lookingAt set from entity @s UUID

scoreboard players remove %ray ww.var 1
execute positioned ^ ^ ^0.25 if block ~ ~ ~ #ww:transparent run function ww:player/looking_at/loop