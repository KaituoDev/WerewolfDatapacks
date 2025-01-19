# context: @s = player
# inputs: {id}

$data modify storage ww:temp setTimeInput set value {id: '$(id)', ticks: 0}

# get existing ticks
$execute store result score %ticks ww.var run \
  data get storage ww:memory config.'$(id)'

# add 10 sec = 200 ticks
execute store result storage ww:temp setTimeInput.ticks int 1 run scoreboard players add %ticks ww.var 200

# sets the new value
return run function ww:config/board/action/time/_set with storage ww:temp setTimeInput