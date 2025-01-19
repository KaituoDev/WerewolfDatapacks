# context: @s = player | villager, @p[tag=this] = player reading
# inputs: {group}

$tellraw @p[tag=this] ["\n",{"selector":"@s","color":"aqua"},{"text":" 配了 ","color":"white","bold":false},{"selector":"@e[scores={ww.pairingGroup=$(group)}]","color":"green"}]