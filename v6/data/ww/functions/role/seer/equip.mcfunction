execute if entity @s[tag=!apprentice,tag=!bewitched] if predicate ww:night run function ww:book/seer
execute if entity @s[tag=!apprentice,tag=!bewitched] run function ww:item/skill/diary/seer

# this includes apprentice tag check
execute if predicate ww:night if predicate ww:mode/riot if entity @s[tag=!bewitched] run function ww:item/skill/immune/self

execute if entity @s[tag=bewitched] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"你受到蠱惑師的詛咒, 無法獲得技能道具, 直到傳承給下一位見習預言家為止"}]