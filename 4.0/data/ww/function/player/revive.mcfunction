# context: @s = player

function ww:player/_set_state {name: 'playerAlive', value: 1}
function ww:player/role/_remove_state {path: 'voodooCurse'}
function ww:player/tag/sanitize

gamemode adventure @s
effect clear @s invisibility

clear @s
function ww:role/daily

attribute @s scale base set 1
attribute @s movement_speed base set 0.1
attribute @s[type=villager] movement_speed base set 0.5