# context: @s = player

function ww:player/looking_at
execute unless data storage ww:output lookingAt run return 0

data modify storage ww:temp recordInput set value {}

# store victim (lookingAt)
data modify storage ww:temp recordInput.victim set from storage ww:output lookingAt

# store source (self)
data modify storage ww:temp recordInput.source set from entity @s UUID

data modify storage ww:temp stealInfoInput set value {}
data modify storage ww:temp stealInfoInput.uuid set from storage ww:output lookingAt

function ww:skill/steal_gift/_info with storage ww:temp stealInfoInput
function ww:skill/steal_gift/_record with storage ww:temp recordInput