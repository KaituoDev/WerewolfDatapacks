scoreboard players set %in math 5
function ww:math/rng

data modify storage ww:game chat.skill.source set value '{"text":"忍者"}'
data modify storage ww:game chat.skill.name set value '{"text":"忍法 - 五道"}'
execute as @a run function ww:chat/skill

execute if score %out math matches 0 run function ww:skill/ninja/effect/0
execute if score %out math matches 1 run function ww:skill/ninja/effect/1
execute if score %out math matches 2 run function ww:skill/ninja/effect/2
execute if score %out math matches 3 run function ww:skill/ninja/effect/3
execute if score %out math matches 4 run function ww:skill/ninja/effect/4

clear @s warped_fungus_on_a_stick{ninja_random:1b}