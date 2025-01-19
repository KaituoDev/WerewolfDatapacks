execute unless entity @s[tag=bewitched] run tag @a[tag=alive,distance=..8] add immuneTarget
execute if entity @s[tag=bewitched] run tag @a[tag=alive,distance=..4] add immuneTarget

execute if entity @s[tag=!fool] run scoreboard players add @a[tag=immuneTarget] immune 5
execute if entity @s[tag=!fool] run scoreboard players add @a[tag=immuneTarget] invisible 5

execute if entity @s[tag=fool] run scoreboard players add @a[tag=immuneTarget] immune 2
execute if entity @s[tag=fool] run effect give @a[tag=immuneTarget] glowing 8 0 true

# bewitching for non-fool case
execute if entity @s[tag=!fool] run tellraw @a[tag=immuneTarget,tag=seer,tag=bewitched] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"守衛幫你解蠱, 隔天就能正常獲得技能"}]
execute if entity @s[tag=!fool] if entity @a[tag=immuneTarget,tag=seer,tag=bewitched] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"你幫預言家解蠱, 下一次使用此技能有效範圍縮減至4格"}]
execute if entity @s[tag=!fool] if entity @a[tag=immuneTarget,tag=seer,tag=bewitched] run tag @s add bewitched
execute if entity @s[tag=!fool] run tag @a[tag=immuneTarget,tag=seer] remove bewitched

# bewitching for fool case
execute if entity @s[tag=fool] as @a[tag=immuneTarget,tag=seer,tag=bewitched] run function ww:player/death/fool_guardian

tag @a remove immuneTarget

clear @s warped_fungus_on_a_stick{immune_field:1b} 1