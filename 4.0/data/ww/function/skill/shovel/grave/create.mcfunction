# context: @s = player | villager

data modify storage ww:temp setupGraveInput set value {}

# player uuid
data modify storage ww:temp setupGraveInput.uuid set from entity @s UUID

# player name
function ww:player/name
data modify storage ww:temp setupGraveInput.player set from storage ww:output playerName

# player role name
function ww:player/_get_state {name: 'playerRole'}
data modify storage ww:temp setupGraveInput.role set from storage ww:output playerState.name
# player campaign name
data modify storage ww:temp setupGraveInput.campaign set from storage ww:output playerState.campaign.name
# player campaign color
data modify storage ww:temp setupGraveInput.color set from storage ww:output playerState.campaign.color

# suspects
tag @s add this_dead
tag @e[predicate=ww:player,tag=!detective,tag=!this_dead,limit=3,sort=nearest] add ww.suspects
tag @s remove this_dead
execute as @e[tag=ww.suspects,sort=random] run function ww:skill/shovel/grave/append_suspect
tag @e[tag=ww.suspects] remove ww.suspects

data modify storage ww:temp joinStringInput set value {delimiter: ", "}
data modify storage ww:temp joinStringInput.strings set from storage ww:temp setupGraveInput.suspectsStrings
function ww:utils/_join_string with storage ww:temp joinStringInput
data modify storage ww:temp setupGraveInput.suspects set from storage ww:output joinString

execute store result score %length ww.var run data get storage ww:temp setupGraveInput.suspects
execute if score %length ww.var matches 0 run data modify storage ww:temp setupGraveInput.suspects set value "未知"

# modify grave data
execute at @s summon marker run function ww:skill/shovel/grave/_setup with storage ww:temp setupGraveInput