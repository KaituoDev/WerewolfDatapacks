# context: @s = player | villager

execute unless predicate ww:is_night run return fail
scoreboard players enable @s ww.question
scoreboard players enable @s ww.questionCampaign
function ww:book/question