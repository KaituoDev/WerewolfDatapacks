function ww:skill/__init

tag @s add this
execute as @a[scores={id=1..}] if score @s id = @p[tag=this] hijack run tag @s add currentTarget

execute store success score %success var if entity @a[tag=currentTarget]

execute if score %success var matches 1 run tellraw @s[tag=!hijacking] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"正在冒充 "},{"selector":"@p[tag=currentTarget]","color":"green","bold":true}]
execute if score %success var matches 0 run tellraw @s[tag=!hijacking] [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"請先使用<捕捉>技能複製玩家頭顱"}]

execute if score %success var matches 1 if entity @s[predicate=!ww:invis,tag=!fool] as @p[tag=currentTarget] run loot replace entity @p[tag=this] armor.head loot ww:player_head
execute if score %success var matches 1 if entity @s[predicate=!ww:invis,tag=fool] run item replace entity @s armor.head with player_head 

tag @s remove this
tag @a remove currentTarget

execute if score %success var matches 1 if entity @s[tag=!hijacking] run clear @s warped_fungus_on_a_stick{skill:1b,hijack_on:1b}
execute if score %success var matches 1 if entity @s[tag=!hijacking] run function ww:item/skill/hijack/off
execute if score %success var matches 1 run tag @s add hijacking
