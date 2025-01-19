# context: @s = player
# storage: ww:temp message

tellraw @s [{"text":"[注意] ", "color": "yellow", "bold": true},{"storage":"ww:temp","nbt":"message","interpret":true}]