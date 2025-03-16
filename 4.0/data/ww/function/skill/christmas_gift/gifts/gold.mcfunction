# context: @s = player opening gift

tag @s add this
execute if entity @s[tag=!krampus] as @a run function ww:chat/_dm { \
  type: 'rich_info', \
  message: '[{"selector":"@n[tag=this]","color":"green","bold":false},{"text":" 打开圣诞礼物拿到了 ","color":"white","bold":false},{"text":"黄金","color":"gold","bold":true}]' \
}

execute if entity @s[tag=krampus] as @a run function ww:chat/_dm { \
  type: 'rich_info', \
  message: '[{"text":"坎普斯","color":"red","bold":false},{"text":" 打开圣诞礼物拿到了 ","color":"white","bold":false},{"text":"黄金","color":"gold","bold":true}]' \
}
tag @s remove this

scoreboard players add @s ww.immune 200

function ww:player/role/_remove_state {path: 'bewitched'}
function ww:chat/_dm {type: 'info', message: '你的蛊毒被清除了'}