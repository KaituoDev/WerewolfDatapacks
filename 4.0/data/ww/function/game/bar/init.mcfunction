# context: server

bossbar set ww:game_status name ""
bossbar set ww:game_status players @a
bossbar set ww:game_status visible true

data modify storage ww:memory GameBarTexts set value {carousel: '', time: '', top_vote_label: ''}
function ww:game/bar/carousel/reset