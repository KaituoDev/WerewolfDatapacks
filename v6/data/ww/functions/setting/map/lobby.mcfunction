forceload add ~ ~
setworldspawn
spawnpoint @a ~ ~ ~

kill @e[type=marker,tag=lobby]
summon marker ~ ~ ~ {Tags:[lobby,map]}

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"遊戲大廳","color":"green","bold":true},{"text":" 設置成功","color":"white","bold":false}]

playsound minecraft:entity.experience_orb.pickup master @s