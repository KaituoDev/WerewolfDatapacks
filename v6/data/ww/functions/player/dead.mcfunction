function ww:reset/tags/debate
function ww:reset/tags/context

execute if predicate ww:mode/riot if entity @a[tag=digger,tag=alive] at @s run function ww:player/death/marker

tag @s remove alive
clear @s
effect clear @s
effect give @s night_vision 1000000 0 true
team leave @s

gamemode spectator @s
scoreboard players reset @s dead
scoreboard players reset @s curse
scoreboard players reset @s damageResisted
scoreboard players reset @s attraction

execute if predicate ww:mode/riot if predicate ww:night unless entity @a[tag=alive,tag=hijack,tag=wolf] run function ww:player/unmask_all
execute if predicate ww:mode/riot if predicate ww:night unless entity @a[tag=alive,tag=goods] run function ww:player/mortal_all

execute if entity @s[tag=hunter,tag=!fool] run function ww:role/hunter/passive
execute if entity @s[tag=black,tag=wolf,tag=!fool] run function ww:role/hunter/passive

execute if entity @s[tag=officer] run function ww:session/officer/order/next
execute if entity @s[tag=seer,tag=!apprentice] run function ww:role/seer/next

execute if entity @s[tag=pairA] run function ww:role/cupid/death/pair_a
execute if entity @s[tag=pairB] run function ww:role/cupid/death/pair_b

execute if predicate ww:morning run function ww:vote/morning/count
