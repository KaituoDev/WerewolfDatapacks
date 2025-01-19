# context: @s = player
# inputs: {uuid}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你将解药注入 ","color":"white","bold":false},{"text":"隐形玩家","color":"green","bold":true}]' \
}

$execute if entity @n[nbt={UUID:$(uuid)},predicate=!ww:is_invisible] run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"你将解药注入 ","color":"white","bold":false},{"selector":"@n[nbt={UUID:$(uuid)}]","color":"green","bold":true}]' \
}


$data modify storage ww:temp narratorInfoInput set value {victim: $(uuid)}
data modify storage ww:temp narratorInfoInput.source set from entity @s UUID
function ww:narrator/info/_healing_potion with storage ww:temp narratorInfoInput

# immune for 10s regardless
$scoreboard players add @n[nbt={UUID:$(uuid)}] ww.immune 200

# if not fool, removes the voodoo curse
$execute if entity @s[tag=!ww.fool] as @n[nbt={UUID:$(uuid)}] run function ww:player/role/_remove_state {path: 'voodooCurse'}

execute if entity @s[tag=!ww.fool] run return 0

# if fool, adds 1 stack, only if the curse exists
function ww:player/role/get_state
$data modify storage ww:temp addsStackInput set value {uuid: $(uuid)}
data modify storage ww:temp addsStackInput.source set from storage ww:output playerState.voodooCurse.source
function ww:skill/voodoo_needle/_add_stack with storage ww:temp addsStackInput



