execute if entity @s[tag=!fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"全體隱形10秒"}]
execute if entity @s[tag=!fool] run scoreboard players add @a invisible 10

execute if entity @s[tag=fool] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"全體隱形10秒"}]
execute if entity @s[tag=fool] run scoreboard players add @s invisible 10
