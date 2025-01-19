## offhand_vote is detecting which hand is holding written_book
## run in ww:game/ingame, by players with localVoteTrigger score

execute if predicate ww:offhand_vote run function ww:vote/local/offhand
execute unless predicate ww:offhand_vote run function ww:vote/local/mainhand

scoreboard players reset @s localVoteTrigger
scoreboard players enable @s localVoteTrigger