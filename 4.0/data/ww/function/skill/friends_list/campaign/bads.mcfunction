# context: @s = player

execute if score %totalWolfKind ww.system matches 1 run return run function ww:skill/friends_list/lonely

tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}
tag @s add this
tellraw @s [ \
 {"text":"你的同伴有: "}, \
 {"selector":"@e[predicate=ww:player,tag=!this,tag=ww.wolf_kind]","color":"green","bold":true} \
]
execute if entity @s[tag=alpha_wolf] if entity @e[predicate=ww:player,tag=alpha_wolf,tag=!this] run tellraw @s [ \
 "\n", \
 {"text":"原初狼同伴有: "}, \
 {"selector":"@e[predicate=ww:player,tag=!this,tag=alpha_wolf]","color":"red","bold":true} \
]
tag @s remove this
tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}