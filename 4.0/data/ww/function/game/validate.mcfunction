# context: @s = player who clicked the sign

execute store result score %totalPlayers ww.var if entity @e[predicate=ww:player]
execute store result score %totalAI ww.var run data get storage ww:memory config.AI_COUNT
scoreboard players operation %totalPlayers ww.var += %totalAI ww.var
execute if score %totalPlayers ww.var matches 2.. run return 1

function ww:chat/_dm {type: 'error', message: '至少需要兩名玩家或AI'}

return fail