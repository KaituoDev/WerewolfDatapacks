## predicate ww:mainhand/vote/... is based on nbt tags, so using in function ww:skill/.. and function ww:vote/.. both works

scoreboard players set %clearBook var 1

execute if predicate ww:mainhand/vote/seer run function ww:vote/seer
execute if predicate ww:mainhand/vote/officer run function ww:vote/officer
execute if predicate ww:mainhand/vote/pair_a run function ww:vote/cupid/pair_a
execute if predicate ww:mainhand/vote/pair_b run function ww:vote/cupid/pair_b
execute if predicate ww:mainhand/vote/digger run function ww:vote/digger
execute if predicate ww:mainhand/vote/reveal_team run function ww:vote/reveal_team

scoreboard players reset @s voteTrigger

execute if predicate ww:mainhand/vote/pair_a run scoreboard players set %clearBook var 0
execute if predicate ww:mainhand/vote/pair_b run scoreboard players set %clearBook var 0
execute if predicate ww:mainhand/vote/digger run scoreboard players set %clearBook var 0

execute if score %clearBook var matches 1 run item replace entity @s weapon.mainhand with air