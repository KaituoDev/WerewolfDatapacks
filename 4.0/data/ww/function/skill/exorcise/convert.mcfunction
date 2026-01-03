# context: @s = player | villager

# convert into trickster
function ww:role/_find_by_id {id: 'trickster'}

data modify storage ww:temp setStateInput set value {name: 'playerRole'}
data modify storage ww:temp setStateInput.value set from storage ww:output roleObj
data modify storage ww:temp selfRoleJourneyItem set value {from: ''}
data modify storage ww:temp selfRoleJourneyItem.name set from storage ww:output roleObj.name

function ww:player/_set_state with storage ww:temp setStateInput

# remove all tags but ww.suit_up if the player have
execute if entity @s[tag=ww.suit_up] run data modify storage ww:temp suitedUp set value true
function ww:player/tag/sanitize
execute if data storage ww:temp suitedUp run tag @s add ww.suit_up
data remove storage ww:temp suitedUp

# record role journey
function ww:player/role/_add_journey with storage ww:temp selfRoleJourneyItem

# clean up
data remove storage ww:temp setStateInput
data remove storage ww:temp selfRoleJourneyItem

# prompt the player
tellraw @s [{"text":"[提示] ", "color": "aqua", "bold": true}, \
    {"text":"你已被驱魔师净化为人类！", "color": "white", "bold": false}]
tellraw @s [{"text":"[提示] ", "color": "aqua", "bold": true}, \
    {"text":"你现在的职业是：", "color": "white", "bold": false}, \
    {"text":"诈欺师", "color": "green", "bold": true}]
playsound entity.experience_orb.pickup player @s

function ww:skill/exorcise/convert_item

# revice factions' player num
tag @s add ww.wolf_kind
function ww:stats/game_start
schedule function ww:ending/check 1s