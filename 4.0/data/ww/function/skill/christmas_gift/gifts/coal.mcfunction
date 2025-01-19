# context: @s = player opening gift

tag @s add this
execute if entity @s[tag=!krampus] as @a run function ww:chat/_dm { \
  type: 'rich_info', \
  message: '[{"selector":"@n[tag=this]","color":"green","bold":false},{"text":" 打開聖誕禮物拿到了 ","color":"white","bold":false},{"text":"煤炭","color":"black","bold":true}]' \
}

execute if entity @s[tag=krampus] as @a run function ww:chat/_dm { \
  type: 'rich_info', \
  message: '[{"text":"坎普斯","color":"red","bold":false},{"text":" 打開聖誕禮物拿到了 ","color":"white","bold":false},{"text":"煤炭","color":"black","bold":true}]' \
}
tag @s remove this

effect give @s darkness 10 0 true
effect give @s slowness 10 2 true