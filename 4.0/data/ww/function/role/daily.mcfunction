# context: @s = player | villager

function ww:player/_get_state {name: 'playerRole'}
execute unless data storage ww:output playerState run return fail

function ww:role/_daily with storage ww:output playerState

function ww:queue/_add {task: 'book/player_role'}
function ww:queue/_add {task: 'config/item/pool_info'}