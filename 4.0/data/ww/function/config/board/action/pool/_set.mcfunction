# context: @s = player
# inputs: {id, count}

$scoreboard players set %count ww.var $(count)
execute if score %count ww.var matches ..-1 run return fail

# handle pool keys
$execute if score %count ww.var matches 0 \
  if data storage ww:memory poolKeys[{id: '$(id)'}] run \
  data remove storage ww:memory poolKeys[{id: '$(id)'}]

$execute if score %count ww.var matches 1.. \
  unless data storage ww:memory poolKeys[{id: '$(id)'}] run \
  data modify storage ww:memory poolKeys append value {id: '$(id)'}

# insert value to map
$data modify storage ww:memory pool.'$(id)' set value $(count)

return 1