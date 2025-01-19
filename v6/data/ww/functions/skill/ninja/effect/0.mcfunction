execute if entity @s[tag=!fool] run effect give @a glowing 10 0 true
execute if entity @s[tag=!fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"全體發光10秒"}]
execute if entity @s[tag=fool] run effect give @s glowing 10 0 true
execute if entity @s[tag=fool] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"全體發光10秒"}]