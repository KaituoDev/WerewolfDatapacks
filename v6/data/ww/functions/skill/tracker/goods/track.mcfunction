data modify storage ww:game tracker.pos set value {X:0,Y:0,Z:0}

tag @s add this

execute as @a[tag=alive,tag=!this,tag=goods] unless score @s onWolfList matches 1.. run tag @s add trackerTarget
execute unless entity @a[tag=trackerTarget] unless entity @a[tag=alive,tag=!this,tag=goods] run tag @p[tag=alive,tag=!immortal,tag=!this] add trackerTarget

data modify storage ww:game tracker.pos.X set from entity @p[tag=trackerTarget] Pos[0]
data modify storage ww:game tracker.pos.Y set from entity @p[tag=trackerTarget] Pos[1]
data modify storage ww:game tracker.pos.Z set from entity @p[tag=trackerTarget] Pos[2]

tag @a remove trackerTarget
tag @s remove this