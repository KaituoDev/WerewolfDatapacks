# context: @s = player | villager

execute as @a run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"忍者發動了 ","color":"white","bold":false},{"text":"蟻遁","color":"green","bold":true}]' \
}

scoreboard players add @s ww.ninjaTransform 200
execute if entity @s[tag=!ww.fool] run attribute @s scale base set 0.05
execute if entity @s[tag=!ww.fool] run attribute @s movement_speed base set 0.2
execute if entity @s[tag=ww.fool] run attribute @s scale base set 3