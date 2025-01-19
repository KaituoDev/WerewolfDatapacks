# context: @s = player | villager
# location: at @s

scoreboard players add @e[predicate=ww:alive,distance=..8] ww.immune 100
scoreboard players add @e[predicate=ww:alive,distance=..8] ww.forceInvis 100

tag @s add this
execute as @e[predicate=ww:alive,distance=..8] if function ww:player/flag/is_bewitched run \
  function ww:skill/guard/handle_bewitched
tag @s remove this

execute if entity @s[tag=ww.fool] run effect give @e[predicate=ww:alive,distance=..8] glowing 8 0 true