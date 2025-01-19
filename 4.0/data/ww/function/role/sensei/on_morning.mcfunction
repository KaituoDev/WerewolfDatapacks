# context: @s = player | villager

function ww:player/role/get_state
execute if data storage ww:output playerState.questionRecords run function ww:skill/question/item
