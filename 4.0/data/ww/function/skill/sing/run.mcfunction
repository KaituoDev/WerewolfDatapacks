# context: @s = player | villager

clear @s *[minecraft:custom_data~{sing:true}]

scoreboard players add @s ww.sing 200
scoreboard players add @s ww.forceInvis 100
scoreboard players add @s ww.immune 100

execute as @a run function ww:chat/_dm {type: 'info', \
  message: '有人鱼在唱歌' \
}