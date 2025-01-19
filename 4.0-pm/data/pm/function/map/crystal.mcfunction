# context: server

execute as @e[type=armor_stand,tag=maze_tp_pad] at @s run function pm:map/crystal/teleport
# execute as @e[type=armor_stand,tag=maze_tp_pad,scores={TP_PAD_CD=1..}] run \
#   function pm:map/crystal/countdown

# execute as @e[type=armor_stand,tag=maze_tp_pad] unless score @s TP_PAD_CD matches 1.. run \
#   data modify entity @s CustomName set value '{"text":"可傳送","color":"green","bold":true}'

# execute as @a[tag=pm_teleported] at @s unless entity @e[type=armor_stand,tag=maze_tp_pad,distance=..2] run \
#   tag @s remove pm_teleported