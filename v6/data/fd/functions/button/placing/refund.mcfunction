tag @s add this_aec

execute as @a if score @s id = @e[type=area_effect_cloud,tag=this_aec,limit=1] owner run tag @s add this
kill @e[type=item,distance=..5]

tag @p[tag=this] add placing
tellraw @p[tag=this] {"text":"\n你的按鈕被沖走了， 請重放","color":"gold"}
execute as @p[tag=this] run function fd:button/placing/obtain/give

tag @a remove this
tag @s remove this_aec

kill @s