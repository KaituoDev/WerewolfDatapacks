# context: @s = player[scores={ww.suitCD=1..}]

execute if score @s ww.suitCD matches 1.. run return run scoreboard players remove @s ww.suitCD 1

# countdown complete
scoreboard players reset @s ww.suitCD
function ww:chat/_dm {type: 'info', message: '裝備冷卻完畢'}