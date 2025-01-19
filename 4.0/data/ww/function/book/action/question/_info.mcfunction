# context: @s = player | villager
# inputs: {player, uuid, campaign, result}

$function ww:chat/_dm {type:'shittim', message: '$(player) $(result) $(campaign)'}

$data modify storage ww:temp narratorInfoInput set value {victim: $(uuid), campaign: '$(campaign)', result: '$(result)'}
data modify storage ww:temp narratorInfoInput.source set from entity @s UUID
function ww:narrator/info/_question with storage ww:temp narratorInfoInput