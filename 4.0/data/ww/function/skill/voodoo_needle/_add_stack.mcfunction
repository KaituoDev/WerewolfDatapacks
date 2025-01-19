# context: @s = player | villager
# inputs: {uuid, source}

$execute as @n[nbt={UUID:$(uuid)}] run function ww:player/role/get_state

$data modify storage ww:temp setStateInput set value {path: 'voodooCurse', value: {stacks: 0, source: $(source)}}
data modify storage ww:temp setStateInput.value merge from storage ww:output playerState.voodooCurse

execute store result score %temp ww.var run data get storage ww:output playerState.voodooCurse.stacks
execute store result storage ww:temp setStateInput.value.stacks int 1 run scoreboard players add %temp ww.var 1

$execute as @n[nbt={UUID:$(uuid)}] run function ww:player/role/_set_state with storage ww:temp setStateInput