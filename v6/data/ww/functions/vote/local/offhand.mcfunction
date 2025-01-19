## predicate ww:offhand/vote/... is based on nbt tags, so using in function ww:skill/.. and function ww:vote/.. both works

scoreboard players set %mainhand var 0

execute if predicate ww:offhand/vote/morning run function ww:vote/morning
execute if predicate ww:offhand/vote/hunter run function ww:vote/hunter
execute if predicate ww:offhand/vote/wolf run function ww:vote/wolf
execute if predicate ww:offhand/vote/siren run function ww:vote/siren
execute if predicate ww:offhand/vote/white_wolf run function ww:vote/white_wolf
execute if predicate ww:offhand/vote/hijack_wolf run function ww:vote/hijack_wolf

execute if predicate ww:offhand/vote/potion_death run function ww:vote/potion_death
execute if predicate ww:offhand/vote/potion_heal run function ww:vote/potion_heal
execute if predicate ww:offhand/vote/sadist run function ww:vote/sadist
execute if predicate ww:offhand/vote/villager run function ww:vote/villager
execute if predicate ww:offhand/vote/guardian run function ww:vote/guardian

execute if predicate ww:offhand/rifle run function ww:vote/hunter
execute if predicate ww:offhand/ninja/scapegoat run function ww:vote/ninja/select

execute if predicate ww:offhand/curse run function ww:vote/curse
execute if predicate ww:offhand/duel run function ww:vote/knight/select

scoreboard players reset @s localVoteTrigger

scoreboard players set %clearBook var 0
execute if predicate ww:offhand/vote/wolf run scoreboard players set %clearBook var 1

execute if score %clearBook var matches 1 run item replace entity @s weapon.offhand with air