# context: @s = player
# storage: ww:temp message

tellraw @s [{"text":"[死訊] ", "color": "dark_purple", "bold": true},{"storage":"ww:temp","nbt":"message","interpret":true}]