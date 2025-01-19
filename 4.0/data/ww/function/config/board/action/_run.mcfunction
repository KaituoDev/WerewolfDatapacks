# context: @s = player
# inputs: {func, args}
# example: function ww:config/board/action/_run {func: "ww:config/board/outline", args: {}}

$data modify storage ww:temp runActionInput set value $(args)
data modify storage ww:temp runActionInput.origin set from entity @n[type=marker,tag=ww.config_board.origin] UUID

# permission check
# function ww:player/_get_state {name: 'playerConfigBoard'}
# execute unless data storage ww:output playerState run return run function ww:chat/_dm {type:'error',message:'只有召唤此设定面板的本人才能更改设定'}

# data modify storage ww:temp compareStringInput set value {}
# data modify storage ww:temp compareStringInput.str1 set from storage ww:temp runActionInput.origin
# data modify storage ww:temp compareStringInput.str2 set from storage ww:temp playerState.origin
# execute store result score %match ww.var run function ww:utils/_compare_string with storage ww:temp compareStringInput
# execute unless score %match ww.var matches 0 run return run function ww:chat/_dm {type:'error',message:'只有召唤此设定面板的本人才能更改设定'}

playsound minecraft:block.comparator.click

$function $(func) with storage ww:temp runActionInput