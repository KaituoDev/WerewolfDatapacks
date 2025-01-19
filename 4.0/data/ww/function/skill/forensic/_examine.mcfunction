# context: @s = player
# inputs: {uuid, player, role, campaign, color, suspects}

$execute if entity @s[tag=!ww.fool] run \ 
function ww:skill/forensic/_info {player: '$(player)', suspects: '$(suspects)'}

$execute if entity @s[tag=ww.fool] run \ 
 function ww:skill/forensic/_info {player: '$(player)', suspects: '未知'}