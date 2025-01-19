# context: server
# scores: %AI_COUNTER ww.system
# inputs: {pos}

data modify storage ww:temp aiSetupInput set value {}
execute store result score %index ww.var run scoreboard players get %AI_COUNTER ww.system
execute store result storage ww:temp aiSetupInput.index int 1 run scoreboard players get %AI_COUNTER ww.system
$execute positioned $(pos) summon villager run function ww:ai/_setup with storage ww:temp aiSetupInput