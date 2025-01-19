# context: @s = player | villager

function ww:player/role/get_state
execute if data storage ww:output playerState.prophecy run function ww:skill/prophecy/item
