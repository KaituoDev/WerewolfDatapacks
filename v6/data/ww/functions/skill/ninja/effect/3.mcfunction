execute if entity @s[tag=!fool] run effect give @a slowness 10 2 true
execute if entity @s[tag=!fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"全體緩速10秒"}]
execute if entity @s[tag=fool] run effect give @s slowness 10 2 true
execute if entity @s[tag=fool] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"全體緩速10秒"}]