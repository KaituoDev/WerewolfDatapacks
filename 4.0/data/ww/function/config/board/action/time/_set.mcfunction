# context: @s = player
# inputs: {id, ticks}

$scoreboard players set %ticks ww.var $(ticks)
execute if score %ticks ww.var matches ..0 run return fail

# insert value to config
$data modify storage ww:memory config.'$(id)' set value $(ticks)

return 1