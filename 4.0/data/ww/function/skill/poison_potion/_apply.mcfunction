# context: @s = player
# inputs: {uuid}

data modify storage ww:temp setStateInput set value {path: 'dyingDate', value: {death: 'poisoned'}}
data modify storage ww:temp setStateInput.value.source set from entity @s UUID
scoreboard players operation %temp ww.var = %days ww.system
execute store result storage ww:temp setStateInput.value.date int 1 run scoreboard players add %temp ww.var 1

$execute if entity @s[tag=!ww.fool] as @n[nbt={UUID:$(uuid)}] run function ww:player/role/_set_state with storage ww:temp setStateInput
execute if entity @s[tag=ww.fool] run function ww:player/role/_set_state with storage ww:temp setStateInput

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你將毒藥注入 ","color":"white","bold":false},{"text":"隱形玩家","color":"green","bold":true}]' \
}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你將毒藥注入 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]' \
}

$data modify storage ww:temp narratorInfoInput set value {victim: $(uuid)}
data modify storage ww:temp narratorInfoInput.source set from entity @s UUID
execute if entity @s[tag=ww.fool] run data modify storage ww:temp narratorInfoInput.victim set from entity @s UUID
function ww:narrator/info/_poison_potion with storage ww:temp narratorInfoInput