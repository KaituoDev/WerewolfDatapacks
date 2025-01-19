# context: @s = player

function ww:player/role/get_state

# handle if list is empty = the only player of the campaign on field
execute store result score %length ww.var run data get storage ww:output playerState.foolFriendsList
execute if score %length ww.var matches ..1 run return run function ww:skill/friends_list/lonely

data modify storage ww:temp playersListInput set value {}
data modify storage ww:temp playersListInput.list set from storage ww:output playerState.foolFriendsList

function ww:utils/_players_list with storage ww:temp playersListInput

tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}
tellraw @s [ \
 {"text":"你的同伴有: "}, \
 {"nbt":"playersList","storage":"ww:output","color":"green","bold":true} \
]
tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}