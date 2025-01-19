# particle happy_villager ~ ~ ~ 0 0 0 0.1 1 force @s
scoreboard players remove %raydist var 1

execute unless score %result var matches 1.. positioned ~1 ~1 ~1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~1 ~1 ~-1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~ ~1 ~1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~ ~1 ~-1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~-1 ~1 ~1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~-1 ~1 ~-1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~1 ~ ~1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~ ~ ~ if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~-1 ~ ~1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~-1 ~ ~-1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~1 ~-1 ~1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~1 ~-1 ~ if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~1 ~-1 ~-1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~ ~-1 ~1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found 
execute unless score %result var matches 1.. positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~ ~-1 ~-1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~-1 ~-1 ~1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~-1 ~-1 ~ if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found
execute unless score %result var matches 1.. positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #minecraft:buttons run function fd:button/placing/search/found

execute unless score %result var matches 1.. if score %raydist var matches 1.. positioned ^ ^ ^0.25 run function fd:button/placing/search/main