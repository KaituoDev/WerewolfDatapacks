data modify storage ww:game actionbar.lovers set value '{"text":""}'
data modify storage ww:game actionbar.bads set value '{"text":""}'
data modify storage ww:game actionbar.goods set value '{"text":""}'
data modify storage ww:game actionbar.wraiths set value '{"text":""}'
data modify storage ww:game actionbar.item_name set value '{"text":""}'
data modify storage ww:game actionbar.item_name_combined set value '{"text":""}'
data modify storage ww:game actionbar.immune set value '{"text":""}'
data modify storage ww:game actionbar.tokens set value '{"text":""}'
data modify storage ww:game actionbar.inherited set value '{"text":""}'
data modify storage ww:game actionbar.team set value '{"text":""}'
data modify storage ww:game actionbar.visibility set value '{"text":""}'
data modify storage ww:game actionbar.attraction set value '{"text":""}'
data modify storage ww:game actionbar.digger set value '{"text":""}'

function ww:role/name

function ww:player/actionbar/lovers
function ww:player/actionbar/bads
function ww:player/actionbar/goods
function ww:player/actionbar/wraiths
function ww:player/actionbar/item_name
function ww:player/actionbar/fool
function ww:player/actionbar/inherited

execute if entity @s[tag=alive] run function ww:player/actionbar/visibility
execute if predicate ww:teaming run function ww:player/actionbar/team
execute if score @s attraction matches 1.. run function ww:player/actionbar/attraction

execute if predicate ww:night run function ww:player/actionbar/immune
# execute if score %gacha_mode system matches 1 if predicate ww:night run function ww:player/actionbar/tokens
execute if predicate ww:night if entity @s[tag=digger] run function ww:player/actionbar/digger

data modify storage ww:game actionbar.combined set value '[{"text":"[","color":"white"},{"storage":"ww:game","nbt":"actionbar.inherited","interpret":true},{"storage":"ww:game","nbt":"role.fool","interpret":true,"color":"red","bold":true},{"storage":"ww:game","nbt":"role.name","interpret":true,"color":"blue","bold":true},{"storage":"ww:game","nbt":"actionbar.team","interpret":true},{"storage":"ww:game","nbt":"actionbar.visibility","interpret":true},{"text":"]","color":"white"},"  ",{"storage":"ww:game","nbt":"actionbar.bads","interpret":true},{"storage":"ww:game","nbt":"actionbar.goods","interpret":true},{"storage":"ww:game","nbt":"actionbar.wraiths","interpret":true},{"storage":"ww:game","nbt":"actionbar.item_name_combined","interpret":true},"  ",{"storage":"ww:game","nbt":"actionbar.lovers","interpret":true}," ",{"storage":"ww:game","nbt":"actionbar.immune","interpret":true}," ",{"storage":"ww:game","nbt":"actionbar.attraction","interpret":true}," ",{"storage":"ww:game","nbt":"actionbar.digger","interpret":true}]'

title @s actionbar {"storage":"ww:game","nbt":"actionbar.combined","interpret":true}

# this is so that actionbar.lovers will work
tag @a remove currentLoverPair