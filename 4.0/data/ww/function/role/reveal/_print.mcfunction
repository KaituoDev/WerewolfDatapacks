# context: @s = player, @p[tag=this] = player reading
# inputs: {player, role, campaignColor, fool}

# sanitizes role journey
# so that if it's [], it will not keep throwing warnings
execute store result score %length ww.var run data get storage ww:output roleJourneyFormatted
execute if score %length ww.var matches 0 run data modify storage ww:output roleJourneyFormatted set value '[{"text":""}]'

data modify storage ww:temp playerKills set value '{"text":""}'
execute if score @s ww.kills matches 1.. run \
  data modify storage ww:temp playerKills set value '[{"text":"\\n> 擊殺數: "},{"score":{"name":"@s","objective":"ww.kills"},"color":"gold","bold":true},"\\n"]'

$tellraw @p[tag=this] [ \
  {"text":"$(player)"}, \
  {"text":" 是 "}, \
  {"text":"$(fool)","color":"yellow","bold":true}, \
  {"text":"$(role)","color":"$(campaignColor)","bold":true,"interpret":false}, \
  {"nbt":"roleJourneyFormatted","storage":"ww:output","interpret":true}, \
  {"nbt":"playerKills","storage":"ww:temp","interpret":true} \
]
