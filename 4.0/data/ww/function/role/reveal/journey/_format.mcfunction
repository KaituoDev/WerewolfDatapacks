# context: @s = player, @p[tag=this] = player reading
# storage: ww:temp roleJourney
# output: ww:output roleJourneyFormatted
# inputs: {name, from}

$data modify storage ww:temp text set value '$(from)'
execute store result score %length ww.var run data get storage ww:temp text
$execute if score %length ww.var matches 1.. run \
  data modify storage ww:output roleJourneyFormatted append value '{"text":"$(name)","color":"aqua","bold":true,"hoverEvent":{"action":"show_text",value:[{"text":"源自于: "},{"text":"$(from)","color":"green","bold":true}]}}'

$execute unless score %length ww.var matches 1.. run \
  data modify storage ww:output roleJourneyFormatted append value '{"text":"$(name)","color":"aqua","bold":true,"hoverEvent":{"action":"show_text",value:[{"text":"初始职业","color":"red","bold":true}]}}'

data modify storage ww:output roleJourneyFormatted append value '{"text":" > ","color":"green","bold":false}'