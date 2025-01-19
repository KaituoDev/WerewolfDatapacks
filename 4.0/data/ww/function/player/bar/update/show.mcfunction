# context: @s = player

function ww:player/bar/get_bossbar_id
data modify storage ww:temp updateShowInput set value {}
data modify storage ww:temp updateShowInput.id set from storage ww:output bossbarId
function ww:player/bar/update/_show with storage ww:temp updateShowInput