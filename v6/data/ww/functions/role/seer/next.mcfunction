tag @p[tag=seer,tag=apprentice,sort=random,tag=alive] add currentTarget

execute if entity @a[tag=currentTarget] run tellraw @a[predicate=ww:god] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@p[tag=currentTarget]","bold":true},{"text":" 成為新一任的預言家","bold":false}]

tellraw @p[tag=currentTarget] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你成為新一任的預言家","bold":false}]
tag @p[tag=currentTarget] remove apprentice
# execute as @p[tag=currentTarget] run function ww:role/seer/equip

tag @a remove currentTarget