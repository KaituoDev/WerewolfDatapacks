##CONTEXT: Running as seer

tag @s add bewitched
clear @s warped_fungus_on_a_stick{skill:1b}
clear @s written_book{seer:1b}

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"你受到蠱惑師的詛咒, 失去了技能道具, 直到傳承給下一位見習預言家為止"}]