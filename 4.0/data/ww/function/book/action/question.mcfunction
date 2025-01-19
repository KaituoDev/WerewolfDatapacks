# context: @s = player | villager
# score: @s ww.question

data modify storage ww:temp getUUIDInput set value {}
execute store result storage ww:temp getUUIDInput.score int 1 run scoreboard players get @s ww.question

scoreboard players reset @s ww.question

data modify storage ww:temp storeDataInput set value {}

# 1. get the corresponding player's uuid info by ww.globalId
execute store result score %success ww.var run function ww:player/id/_get_uuid with storage ww:temp getUUIDInput
execute if score %success ww.var matches 0 run return fail

data modify storage ww:temp storeDataInput.uuid set from storage ww:output playerUUID

function ww:player/name/_get with storage ww:temp storeDataInput
data modify storage ww:temp storeDataInput.player set from storage ww:output playerName

# 2. store the information in @s playerRoleState: path = question, value = {player, uuid}
function ww:book/action/question/_set_player_selection with storage ww:temp storeDataInput

# continue next selection
clear @s written_book[custom_data~{"ww.book":"ww.skill.question"}]
function ww:queue/_add {task: 'book/question_campaign'}

return 1