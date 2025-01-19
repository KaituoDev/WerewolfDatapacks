# context: @s = player, @p[tag=this] = player reading

# construct role journey into a string
function ww:role/reveal/journey

# show player name + latest role + role journey

function ww:player/_get_state {name: 'playerRole'}
data modify storage ww:temp printInput set value {fool: ''}
data modify storage ww:temp printInput.campaignColor set from storage ww:output playerState.campaign.color
data modify storage ww:temp printInput.role set from storage ww:output playerState.name

# append fool character
execute if entity @s[tag=ww.fool] run data modify storage ww:temp printInput.fool set value '蠢'

function ww:player/name
data modify storage ww:temp printInput.player set from storage ww:output playerName
function ww:role/reveal/_print with storage ww:temp printInput