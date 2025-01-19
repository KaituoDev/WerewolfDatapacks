tag @s add this
tag @e[tag=grave,distance=..4,sort=nearest,limit=1] add currentGrave

execute store success score %success var if entity @e[tag=currentGrave]

execute if score %success var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"請靠近墳墓 (玩家的死亡地點, 有燭火標記)"}]

execute if score %success var matches 1 run clear @s warped_fungus_on_a_stick{shovel:1b}

execute if score %success var matches 1 unless entity @s[tag=fool] as @e[tag=currentGrave,limit=1] run function ww:role/digger/inherit
execute if score %success var matches 1 if entity @s[tag=fool] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"哎呀, 鏟子斷了"}]
execute if score %success var matches 1 if entity @s[tag=fool] run playsound minecraft:item.shield.break master @s

tag @s remove this
tag @e[tag=currentGrave] remove currentGrave