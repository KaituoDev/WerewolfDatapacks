## SETTING: Glow when less than N players in riot mode
## DEFAULT: %TEAMS constant 0

scoreboard players add %TEAMS constant 1

execute store result score %players var if entity @a[predicate=!ww:god]
execute if score %TEAMS constant > %players var run scoreboard players set %TEAMS constant 0

# min teams count is 2
execute if score %TEAMS constant matches 1 run scoreboard players set %TEAMS constant 2

execute if entity @s[predicate=ww:sneaking] run scoreboard players set %TEAMS constant 0

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"遊戲開始後會將現有玩家分成 "},{"score":{"name":"%TEAMS","objective":"constant"},"color":"green","bold":true},{"text":" 組, 最後生存的組別獲勝, 狼人殺原有的結局皆不適用 (例: 狼人, 戀人, 怨靈, 抖M結局等)","color":"white","bold":false}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs