# context: @s = player
# inputs: {index}

data modify storage ww:temp getItemInput set value {color: 'gold'}
$data modify storage ww:temp getItemInput.id set from storage ww:temp GACHA_SKILLS[$(index)]
$data remove storage ww:temp GACHA_SKILLS[$(index)]

execute store result score %shouldReroll ww.var run \
 function ww:skill/gacha/_validate with storage ww:temp getItemInput
execute if score %shouldReroll ww.var matches 1.. run return run \
 function ww:skill/gacha/roll

function ww:skill/_item_with_color with storage ww:temp getItemInput
function ww:skill/_info with storage ww:temp getItemInput