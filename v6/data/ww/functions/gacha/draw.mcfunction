scoreboard players set %drawn var 0

execute unless score @s tokens matches 1.. run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"","bold":false},{"text":"你沒有足夠的代幣"}]

execute if score @s tokens matches 1..9 run scoreboard players set %drawn var 1
execute if score @s tokens matches 1..9 run function ww:gacha/draw/1

execute if score %drawn var matches 0 if score @s tokens matches 10.. run function ww:gacha/draw/10