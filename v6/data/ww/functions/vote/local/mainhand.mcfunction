## predicate ww:mainhand/vote/... is based on nbt tags, so using in function ww:skill/.. and function ww:vote/.. both works

scoreboard players set %mainhand var 0

execute if predicate ww:mainhand/vote/morning run function ww:vote/morning
execute if predicate ww:mainhand/vote/hunter run function ww:vote/hunter
execute if predicate ww:mainhand/vote/wolf run function ww:vote/wolf
execute if predicate ww:mainhand/vote/siren run function ww:vote/siren
execute if predicate ww:mainhand/vote/white_wolf run function ww:vote/white_wolf
execute if predicate ww:mainhand/vote/hijack_wolf run function ww:vote/hijack_wolf

execute if predicate ww:mainhand/vote/potion_death run function ww:vote/potion_death
execute if predicate ww:mainhand/vote/potion_heal run function ww:vote/potion_heal
execute if predicate ww:mainhand/vote/sadist run function ww:vote/sadist
execute if predicate ww:mainhand/vote/villager run function ww:vote/villager
execute if predicate ww:mainhand/vote/guardian run function ww:vote/guardian

execute if predicate ww:mainhand/rifle run function ww:vote/hunter
execute if predicate ww:mainhand/ninja/scapegoat run function ww:vote/ninja/select

execute if predicate ww:mainhand/curse run function ww:vote/curse
execute if predicate ww:mainhand/duel run function ww:vote/knight/select

scoreboard players reset @s localVoteTrigger

scoreboard players set %clearBook var 0
execute if predicate ww:mainhand/vote/wolf run scoreboard players set %clearBook var 1

execute if score %clearBook var matches 1 run item replace entity @s weapon.mainhand with air
