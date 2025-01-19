# context: @s = player | villager

tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}

tag @s add this
execute if entity @e[tag=!this,tag=hentai] run tellraw @s [ \
 {"text":"同夥: ","color":"white","bold":false}, \
 {"selector":"@e[tag=!this,tag=hentai]","color":"white","bold":true} \
]

execute if entity @e[tag=ww.harassed] run tellraw @s [ \
 {"text":"已騷擾: ","color":"white","bold":false}, \
 {"selector":"@e[tag=ww.harassed]","color":"green","bold":true} \
]

execute if entity @e[predicate=ww:alive,tag=!hentai,tag=!ww.harassed] run tellraw @s [ \
 {"text":"未騷擾: ","color":"white","bold":false}, \
 {"selector":"@e[predicate=ww:alive,tag=!hentai,tag=!ww.harassed]","color":"red","bold":true} \
]

execute if entity @s[tag=ww.fool] if entity @e[predicate=ww:alive,tag=!hentai,tag=!ww.harassed] as @a[tag=!this,tag=!hentai] run \
 function ww:chat/_dm { type: 'info', message: '[ \
  {"text":"未騷擾: ","color":"white","bold":false}, \
  {"selector":"@e[predicate=ww:alive,tag=!hentai,tag=!ww.harassed]","color":"red","bold":true} \
  ]'}

tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}
tag @s remove this