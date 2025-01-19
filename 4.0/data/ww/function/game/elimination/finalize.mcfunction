# context: server
# scores: %maxVoteCount ww.system

execute unless score %maxVoteCount ww.system matches 1.. run return fail

scoreboard players set %invalidVotes ww.system 0
# remove all masochist votes
execute as @e[predicate=ww:alive,tag=masochist] run function ww:role/masochist/finalize
execute if score %invalidVotes ww.system matches 1.. as @a run function ww:chat/_dm {type: 'rich_warn', message: \
 '[{"text":"本次投票出现","color":"white","bold":false},{"score":{"name":"%invalidVotes","objective":"ww.system"},"color":"yellow","bold":true},{"text":"张无效票","color":"white","bold":false}]' \
}

# recalculate
function ww:game/elimination/calculate

# if max count is 0, there no point to continue
execute unless score %maxVoteCount ww.system matches 1.. run return run \
 function ww:game/elimination/peace_message

# perform rigged votes
execute as @e[predicate=ww:alive] run function ww:skill/rigged_vote/finalize

data modify storage ww:temp drawHandlerInput set value {}
execute store result storage ww:temp drawHandlerInput.count int 1 run \
  scoreboard players get %maxVoteCount ww.system

# returns 1 if masochist ending
execute store result score %success ww.var run \
  function ww:game/elimination/_draw_handler with storage ww:temp drawHandlerInput
execute if score %success ww.var matches 1 run return 1

scoreboard players reset * ww.vote_summary
scoreboard players set %maxVoteCount ww.system 0