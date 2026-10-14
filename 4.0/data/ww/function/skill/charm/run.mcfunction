# context: @s = player | villager

clear @s *[minecraft:custom_data~{charm:true}]

scoreboard players add @s ww.charm 60

execute as @a run function ww:chat/_dm {type: 'info', \
  message: '有狼美人发动了魅惑' \
}