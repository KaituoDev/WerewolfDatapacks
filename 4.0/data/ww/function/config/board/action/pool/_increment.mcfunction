# context: @s = player
# inputs: {id}

$data modify storage ww:temp setPoolCountInput set value {id: '$(id)', count: 0}

scoreboard players set %count ww.var 0
# get existing pool count if exists
$execute if data storage ww:memory pool.'$(id)' \
  store result score %count ww.var run \
  data get storage ww:memory pool.'$(id)'

execute store result storage ww:temp setPoolCountInput.count int 1 run scoreboard players add %count ww.var 1

# sets the new value
return run function ww:config/board/action/pool/_set with storage ww:temp setPoolCountInput