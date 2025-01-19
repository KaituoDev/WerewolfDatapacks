# context: @s = player

function ww:player/looking_at
execute unless data storage ww:output lookingAt run return 0
clear @s *[minecraft:custom_data~{challenge:true}]

data modify storage ww:temp challengeInput set value {}
data modify storage ww:temp challengeInput.uuid set from storage ww:output lookingAt
function ww:player/_get_state {name: 'playerRole'}
data modify storage ww:temp challengeInput.campaign set from storage ww:output playerState.campaign.id
function ww:skill/challenge/_apply with storage ww:temp challengeInput