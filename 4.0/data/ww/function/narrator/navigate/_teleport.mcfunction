# context: @s = player
# inputs: {id}

$execute if entity @n[scores={ww.globalId=$(id)},predicate=!ww:alive] run return run \
 function ww:chat/_dm {type: 'warn', message: '此AI已死亡'}

$tp @s @n[scores={ww.globalId=$(id)}]