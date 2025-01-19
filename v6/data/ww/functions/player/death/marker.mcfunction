summon marker ~ ~ ~ {Tags:[summoned]}

scoreboard players set @e[type=marker,tag=summoned,limit=1] processing 1

data modify entity @e[type=marker,tag=summoned,limit=1] Tags set from entity @s Tags

tag @e[scores={processing=1..},limit=1] add grave
tag @e[scores={processing=1..},limit=1] remove officer

scoreboard players reset @e[scores={processing=1..}] processing