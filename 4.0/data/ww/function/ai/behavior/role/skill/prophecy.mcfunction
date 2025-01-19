# context: @s = villager
# location: at @s

execute if function ww:player/flag/is_bewitched run return run scoreboard players set @s ww.ai.prophecy_used 1
execute unless entity @e[predicate=ww:alive,distance=1..] run return fail

scoreboard players set @s ww.ai.prophecy_used 1

data modify storage ww:temp skillInput set value {}
data modify storage ww:temp skillInput.uuid set from entity @n[predicate=ww:alive,sort=random,distance=1..] UUID
function ww:book/action/prophecy/_get_role with storage ww:temp skillInput

data modify storage ww:temp skillInput.role set from storage ww:output playerRole.name
data modify storage ww:temp skillInput.campaign set from storage ww:output playerRole.campaign.name
data modify storage ww:temp skillInput.color set from storage ww:output playerRole.campaign.color

function ww:player/name/_get with storage ww:temp skillInput
data modify storage ww:temp skillInput.player set from storage ww:output playerName

function ww:ai/behavior/role/skill/_prophecy with storage ww:temp skillInput
execute if function ww:config/flag/show_ai_prophecy run \
  function ww:book/action/prophecy/_info_ai with storage ww:temp skillInput