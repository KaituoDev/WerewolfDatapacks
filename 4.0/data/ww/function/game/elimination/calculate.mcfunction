# context: server

scoreboard players reset @e[predicate=ww:player] ww.vote_summary
scoreboard players set %maxVoteCount ww.system 0
execute as @e[predicate=ww:alive] run function ww:game/elimination/calculate/sum

data modify storage ww:temp topCandidatesListInput set value {}
execute store result storage ww:temp topCandidatesListInput.count int 1 run \
  scoreboard players get %maxVoteCount ww.system

# resets text if everyone regretted
execute unless score %maxVoteCount ww.system matches 1.. run return run function ww:game/bar/carousel/reset

# create a list of top voted candidates for game bar carousel
function ww:game/elimination/calculate/_construct_list with storage ww:temp topCandidatesListInput
# data modify storage ww:temp joinStringInput set value {delimiter: ' ', strings: [' 票數最高者:']}
# data modify storage ww:temp joinStringInput.strings append from storage ww:output topCandidatesList
# function ww:utils/_join_string with storage ww:temp joinStringInput
data modify storage ww:memory GameBarTexts.top_vote_label set value '| 票最多: '
data modify storage ww:temp updateCarouselInput set value {}
data modify storage ww:temp updateCarouselInput.text set from storage ww:output topCandidatesList
function ww:game/bar/carousel/_update_text with storage ww:temp updateCarouselInput

# setup scoreboard display names
execute as @e[predicate=ww:alive,scores={ww.vote_summary=1..},type=villager] run function ww:game/elimination/calculate/display_name