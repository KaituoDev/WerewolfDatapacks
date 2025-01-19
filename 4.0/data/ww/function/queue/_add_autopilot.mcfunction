# context: @s = player | villager
# inputs: {task}

data remove storage ww:temp taskInput
$data modify storage ww:temp taskInput set value {func: '$(task)'}
data modify storage ww:temp taskInput.uuid set from entity @s UUID

execute if data storage ww:temp taskInput.func run \
  data modify storage ww:queue autopilotTasks append from storage ww:temp taskInput