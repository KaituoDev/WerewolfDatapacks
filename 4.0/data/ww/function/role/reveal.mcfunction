# context: @s = player

tag @s add this
tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}

execute if score %totalBads ww.system matches 1.. run tellraw @s {"text":"狼人阵营","color":"red","bold":true}
execute as @a[predicate=ww:player,tag=bads] run function ww:role/reveal/player
execute as @e[predicate=ww:player,tag=bads,type=villager] run function ww:role/reveal/player

execute if score %totalBads ww.system matches 1.. if score %totalGoods ww.system matches 1.. run tellraw @s ""
execute if score %totalGoods ww.system matches 1.. run tellraw @s {"text":"人类阵营","color":"#50d300","bold":true}
execute as @a[predicate=ww:player,tag=goods] run function ww:role/reveal/player
execute as @e[predicate=ww:player,tag=goods,type=villager] run function ww:role/reveal/player

execute if score %totalSpirits ww.system matches 1.. run tellraw @s ""
execute if score %totalSpirits ww.system matches 1.. run tellraw @s {"text":"怨灵阵营","color":"dark_red","bold":true}
execute as @a[predicate=ww:player,tag=spirits] run function ww:role/reveal/player
execute as @e[predicate=ww:player,tag=spirits,type=villager] run function ww:role/reveal/player

# pairings
execute as @e[predicate=ww:player,tag=ww.pairingFinalized] run function ww:role/reveal/pairing

tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}
tag @s remove this