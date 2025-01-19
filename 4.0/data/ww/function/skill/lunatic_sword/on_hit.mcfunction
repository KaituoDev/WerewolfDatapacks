# context: @s = player | villager hit by lunatic_sword, on attacker = attacking player

execute if entity @s[type=player] run advancement revoke @s only ww:hit_by_lunatic_sword

data modify storage ww:temp input set value {}

execute on attacker run function ww:player/_get_state {name: 'playerRole'}
data modify storage ww:temp input.attackerCampaignTag set from storage ww:output playerState.campaign.id

# function ww:player/_get_state {name: 'playerRole'}
# data modify storage ww:temp input.victimCampaignName set from storage ww:output playerState.campaign.name
# data modify storage ww:temp input.victimCampaignColor set from storage ww:output playerState.campaign.color

function ww:skill/lunatic_sword/_on_attacked with storage ww:temp input