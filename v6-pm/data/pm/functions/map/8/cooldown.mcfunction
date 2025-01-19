scoreboard players set @s TP_PAD_CD 100
tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"傳送冷卻5秒"}]
tag @s remove tp_candidate