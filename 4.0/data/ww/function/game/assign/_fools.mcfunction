# context: server
# inputs: {count}

$tag @e[predicate=ww:player,limit=$(count),sort=random] add ww.fool
execute as @e[tag=ww.fool] run function ww:player/_set_state {name: 'playerFool', value: 1}