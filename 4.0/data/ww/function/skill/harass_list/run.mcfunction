# context: @s = player | villager

tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}

tag @s add this
execute if entity @e[tag=!this,tag=hentai] run tellraw @s [ \
 {"text":"同伙: ","color":"white","bold":false}, \
 {"selector":"@e[tag=!this,tag=hentai]","color":"white","bold":true} \
]

execute if entity @e[tag=ww.harassed] run tellraw @s [ \
 {"text":"已骚扰: ","color":"white","bold":false}, \
 {"selector":"@e[tag=ww.harassed]","color":"green","bold":true} \
]

execute if entity @e[predicate=ww:alive,tag=!hentai,tag=!ww.harassed] run tellraw @s [ \
 {"text":"未骚扰: ","color":"white","bold":false}, \
 {"selector":"@e[predicate=ww:alive,tag=!hentai,tag=!ww.harassed]","color":"red","bold":true} \
]

execute if entity @s[tag=ww.fool] if entity @e[predicate=ww:alive,tag=!hentai,tag=!ww.harassed] \
  run tellraw @a[tag=!this,tag=!hentai] [\
  {"text":"[提示] ", "color": "aqua", "bold": true}, \
  {"text":"色狼尚未骚扰: ","color":"white","bold":false}, \
  {"selector":"@e[predicate=ww:alive,tag=!hentai,tag=!ww.harassed]","color":"red","bold":true} \
]

tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}
tag @s remove this