execute if entity @s[tag=!fool] run function ww:skill/tp/swap/furthest

execute if entity @s[tag=fool] run function ww:skill/tp/bads
execute if entity @s[tag=fool] run effect give @s glowing 5 0 true

scoreboard players add @s invisible 5

data modify storage ww:game chat.skill.source set value '{"text":"忍者"}'
data modify storage ww:game chat.skill.name set value '{"text":"忍法 - 代罪"}'
execute as @a run function ww:chat/skill

clear @s warped_fungus_on_a_stick{ninja_scapegoat:1b}