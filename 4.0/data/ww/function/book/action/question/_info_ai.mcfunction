# context: @s = player | villager
# inputs: {player, uuid, campaign, result}

$execute as @a[predicate=!ww:narrator] run function ww:chat/_dm {type:'info', message: '某村民发现: $(player)$(result)$(campaign)'}

$data modify storage ww:temp narratorInfoInput set value {victim: $(uuid), campaign: '$(campaign)', result: '$(result)'}
data modify storage ww:temp narratorInfoInput.source set from entity @s UUID
function ww:narrator/info/_question with storage ww:temp narratorInfoInput