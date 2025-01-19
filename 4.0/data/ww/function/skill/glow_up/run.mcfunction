# context: @s = player | villager

clear @s *[minecraft:custom_data~{glow_up:true}]

effect give @e[predicate=ww:alive] glowing 30 0 true
effect give @e[tag=ww.mount] glowing 30 0 true
effect give @e[tag=ww.killer_ai] glowing 30 0 true

data remove storage ww:temp narratorInfoInput
data modify storage ww:temp narratorInfoInput.source set from entity @s UUID
function ww:narrator/info/_glow_up with storage ww:temp narratorInfoInput

execute if entity @s[tag=ww.fool] run scoreboard players set %rainbowGlow ww.system 600