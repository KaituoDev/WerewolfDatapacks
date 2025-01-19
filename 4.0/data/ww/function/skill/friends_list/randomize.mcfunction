# context: @s = player | villager

data modify storage ww:temp randomizeInput set value {count: 0}
execute if entity @s[tag=bads] run scoreboard players operation %count ww.var = %totalBads ww.system 
execute if entity @s[tag=goods] run scoreboard players operation %count ww.var = %totalGoods ww.system 
execute if entity @s[tag=spirits] run scoreboard players operation %count ww.var = %totalSpirits ww.system 

# minus 1 to not include self
execute store result storage ww:temp randomizeInput.count int 1 run scoreboard players remove %count ww.var 1

function ww:skill/friends_list/_randomize with storage ww:temp randomizeInput