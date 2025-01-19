## SETTING: Glow when less than N players in riot mode
## DEFAULT: %riot_glow system 2

scoreboard players add %riot_glow system 1

execute store result score %players var if entity @a[predicate=!ww:god]
execute if score %riot_glow system > %players var run scoreboard players set %riot_glow system 2
execute if entity @s[predicate=ww:sneaking] run scoreboard players set %riot_glow system 2

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"活著玩家數 <= "},{"score":{"name":"%riot_glow","objective":"system"},"color":"green","bold":true},{"text":" 全體白天永久發光","color":"white","bold":false}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs