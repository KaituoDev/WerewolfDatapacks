execute store result score %players var if entity @a[predicate=!ww:god]

scoreboard players set %two_player_mode system 0
execute if score %players var matches 2 run scoreboard players set %two_player_mode system 1

execute if score %players var matches ..1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"玩家至少要兩人"}]

execute if score %two_player_mode system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"","bold":false},{"text":"由於玩家僅有兩人, 因此不會觸發一狼一人的結局"}]

execute if score %players var matches 2.. run function ww:game/init