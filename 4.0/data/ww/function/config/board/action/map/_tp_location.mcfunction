# context: @s = player
# inputs: {prevLocation, nextLocation}

$tellraw @s ["\n",{"text":"点此回到之前的位置 $(prevLocation)","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/tp $(prevLocation)"}}]

$tp $(nextLocation)