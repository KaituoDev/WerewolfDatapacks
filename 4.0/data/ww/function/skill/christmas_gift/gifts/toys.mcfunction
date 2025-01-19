# context: @s = player opening gift

tag @s add this
execute if entity @s[tag=!krampus] as @a run function ww:chat/_dm { \
  type: 'rich_info', \
  message: '[{"selector":"@n[tag=this]","color":"green","bold":false},{"text":" 打开圣诞礼物拿到了 ","color":"white","bold":false},{"text":"玩具","color":"yellow","bold":true}]' \
}

execute if entity @s[tag=krampus] as @a run function ww:chat/_dm { \
  type: 'rich_info', \
  message: '[{"text":"坎普斯","color":"red","bold":false},{"text":" 打开圣诞礼物拿到了 ","color":"white","bold":false},{"text":"玩具","color":"yellow","bold":true}]' \
}
tag @s remove this

effect give @s speed 10 2 true