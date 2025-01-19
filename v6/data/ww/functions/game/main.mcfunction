execute as @a[scores={skill=1..}] at @s run function ww:skill/main
execute as @e[predicate=ww:item/skill,tag=!protected] run function ww:item/protect
execute as @e[predicate=ww:item/vote,tag=!protected] run function ww:item/protect

execute unless predicate fd:finding_button if score %idle system matches 0 as @a at @s run function ww:player/actionbar
execute if predicate fd:finding_button run effect give @a night_vision 50 0 true

effect give @a resistance 1000000 4 true
effect give @a saturation 1000000 4 true

execute as @a[scores={voteTrigger=1..}] run function ww:vote/global
execute as @a[scores={localVoteTrigger=1..}] run function ww:vote/local

execute if score %idle system matches 1 run function ww:game/idle
execute if score %started system matches 1 run function ww:game/ingame