# context: server

effect give @a night_vision infinite 0 true

execute if score %map ww.system matches 3 run function pm:map/neighborhood/morning
execute if score %map ww.system matches 2 as @e[predicate=ww:player] run \
  attribute @s gravity base set 0.01
