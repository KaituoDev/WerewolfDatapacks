# context: @s = player
# inputs: {message}

execute unless function ww:config/flag/show_death_cause run return run function ww:player/death/simple_message

tag @s add this
$execute as @a run function ww:chat/_dm {type: 'rich_death', message: '$(message)'}
tag @s remove this