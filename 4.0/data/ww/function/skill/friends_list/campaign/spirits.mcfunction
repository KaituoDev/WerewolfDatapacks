# context: @s = player

execute if score %totalSpirits ww.system matches 1 run return run function ww:skill/friends_list/lonely

tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}
tag @s add this
tellraw @s [ \
 {"text":"你的同伴有: "}, \
 {"selector":"@e[predicate=ww:player,tag=!this,tag=spirits]","color":"green","bold":true} \
]
tag @s remove this
tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}