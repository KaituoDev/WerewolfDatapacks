## offhand_vote is detecting which hand is holding written_book
## run in ww:game/ingame, by players with voteTrigger score

execute if predicate ww:offhand_vote run function ww:vote/global/offhand
execute unless predicate ww:offhand_vote run function ww:vote/global/mainhand

scoreboard players reset @s voteTrigger
scoreboard players enable @s voteTrigger