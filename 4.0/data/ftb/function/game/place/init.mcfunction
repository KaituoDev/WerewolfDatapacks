# context: server

scoreboard players set %canPlaceButton ftb.system 1

tag @a remove ftb.placement.denied
execute as @a[predicate=ww:player] run function ftb:button/init

bossbar set ftb:game_status players @a
bossbar set ftb:game_status visible true
execute store result score %time ftb.system run data get storage ww:memory config.MAX_FTB_HIDE_TICKS
execute store result bossbar ftb:game_status max run scoreboard players get %time ftb.system
execute store result bossbar ftb:game_status value run scoreboard players get %time ftb.system

bossbar set ftb:game_status color white

tag @a remove ftb.placement.denied
tag @a remove ftb.button.placed

title @a title {"text":"藏按钮时间!!","color":"yellow"}