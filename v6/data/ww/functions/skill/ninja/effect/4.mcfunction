execute if entity @s[tag=!fool] run function ww:skill/tp/swap/all
execute if entity @s[tag=fool] run function ww:skill/tp/all
tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"全體互換位置"}]