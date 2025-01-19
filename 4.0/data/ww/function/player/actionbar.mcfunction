# context: @s = player

data modify storage ww:temp actionbarInput set value {name: '旁观中', color: 'gray'}
function ww:player/_get_state {name: 'playerRole'}
execute if data storage ww:output playerState run data modify storage ww:temp actionbarInput.name set from storage ww:output playerState.name
execute if data storage ww:output playerState run data modify storage ww:temp actionbarInput.color set from storage ww:output playerState.campaign.color

function ww:player/actionbar/_display with storage ww:temp actionbarInput