# context: @s = player

function ww:player/looking_at
execute unless data storage ww:output lookingAt run return 0

data modify storage ww:temp recordInput set value {}

# store victim
execute unless entity @s[tag=ww.fool] run \
  data modify storage ww:temp recordInput.victim set from storage ww:output lookingAt
execute if entity @s[tag=ww.fool] run \
  data modify storage ww:temp recordInput.victim set from entity @s UUID

# store source
execute unless entity @s[tag=ww.fool] run \
  data modify storage ww:temp recordInput.source set from entity @s UUID
execute if entity @s[tag=ww.fool] run \
  data modify storage ww:temp recordInput.source set from storage ww:output lookingAt

data modify storage ww:temp rifleInfoInput set value {}
data modify storage ww:temp rifleInfoInput.uuid set from storage ww:output lookingAt

function ww:skill/rifle/_record with storage ww:temp recordInput
function ww:skill/rifle/_info with storage ww:temp rifleInfoInput