forceload add ~ ~

kill @e[type=marker,tag=map9]
summon marker ~ ~ ~ {Tags:[map9,map]}

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"storage":"ww:game","nbt":"mapNames[8]","color":"green","bold":true},{"text":" 設置成功","color":"white","bold":false}]

playsound minecraft:entity.experience_orb.pickup master @s

function ww:setting/map/9/choose