tag @s add this
execute as @a[scores={id=1..},tag=!this,tag=!alive] if score @s id = @p[tag=this] voteTrigger run tag @s add currentTarget

execute store success score %success var if entity @a[tag=currentTarget]

# fool player is unable to dig
execute if entity @s[tag=fool] run tag @a remove currentTarget
execute if entity @s[tag=fool] run clear @s written_book{digger:1b}
execute if entity @s[tag=fool] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"哎呀, 鏟子斷了"}]

execute if score %success var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"此玩家還活著, 請選擇已死亡的玩家"}]

# inheriting process
# digger is already tagged with "this"
execute as @p[tag=currentTarget] run function ww:role/assign/get/__switcher

execute if score %success var matches 1 run tag @s add inherited
execute if entity @a[tag=currentTarget,tag=fool] run tag @s add fool
execute if score %success var matches 1 run function ww:role/assign/postprocess

execute if score %success var matches 1 run clear @s
execute if score %success var matches 1 run function ww:role/equip
# wolf vote book is given when the wolf vote session begins

tag @s remove this
tag @a remove currentTarget