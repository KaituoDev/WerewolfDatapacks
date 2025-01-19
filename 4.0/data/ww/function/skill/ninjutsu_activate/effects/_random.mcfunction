# context: @s = player | villager
# inputs: {index}

data modify storage ww:temp scrolls set value ["morph","tree","crowd","smoke","mini"]
data modify storage ww:temp activateInput set value {}
$data modify storage ww:temp activateInput.name set from storage ww:temp scrolls[$(index)]
function ww:skill/ninjutsu_activate/_activate with storage ww:temp activateInput