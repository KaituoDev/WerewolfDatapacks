## Running as the player with the most morningVoteCount
## but if the player is a masochist (not fool), they win the game

execute unless entity @s[tag=masochist,tag=!fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"white","bold":true},{"text":" 獲得最高票 ","color":"white","bold":false},{"score":{"name":"@s","objective":"morningVoteCount"},"color":"green","bold":true},{"text":" 票， 因此被眾人處決了","color":"white","bold":false}]

execute if entity @s[tag=masochist,tag=fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.lmao","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"white","bold":true},{"text":" 其實是蠢抖M教徒 ","color":"white","bold":false}]

execute unless entity @s[tag=masochist,tag=!fool] run function ww:player/death

execute unless predicate ww:teaming if entity @s[tag=masochist,tag=!fool] run function ww:ending/masochist