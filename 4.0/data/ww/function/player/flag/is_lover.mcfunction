# context: @s = player
# output: 1 = true, 0 = false

execute if score @s ww.pairingGroup matches 1.. run return 1

return 0