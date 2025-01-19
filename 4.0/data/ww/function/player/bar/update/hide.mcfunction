# context: @s = player

function ww:player/bar/get_bossbar_id
data modify storage ww:temp updateHideInput set value {}
data modify storage ww:temp updateHideInput.id set from storage ww:output bossbarId
function ww:player/bar/update/_hide with storage ww:temp updateHideInput