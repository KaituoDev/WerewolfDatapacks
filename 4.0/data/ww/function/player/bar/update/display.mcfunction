# context: @s = player

function ww:player/bar/get_bossbar_id
data modify storage ww:temp updateDisplayInput set value {}
data modify storage ww:temp updateDisplayInput.id set from storage ww:output bossbarId
function ww:player/bar/update/_recalculate with storage ww:temp updateDisplayInput