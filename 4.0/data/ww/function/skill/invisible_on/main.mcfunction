# context: @s = player[scores={ww.suitCD=1..}]

execute if score @s ww.invisItemCD matches 1.. run return run scoreboard players remove @s ww.invisItemCD 1

# countdown complete
scoreboard players reset @s ww.invisItemCD
function ww:chat/_dm {type: 'info', message: '隱形冷卻完畢'}