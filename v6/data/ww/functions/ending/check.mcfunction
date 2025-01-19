execute store result score %alive_goods var if entity @a[tag=alive,tag=goods]
execute store result score %alive_bads var if entity @a[tag=alive,tag=bads]
execute store result score %alive_alphas var if entity @a[tag=alive,tag=alpha,tag=wolf]

execute store result score %alive_wraiths var if entity @a[tag=alive,tag=wraiths]
execute store result score %alive_pairA var if entity @a[tag=alive,tag=pairA]
execute store result score %alive_pairB var if entity @a[tag=alive,tag=pairB]
execute store result score %alive var if entity @a[tag=alive,scores={dead=0}]

execute store result score %initial_bads var if entity @a[tag=bads]

## USE ENDING STATUS
scoreboard players set %ending system 0

# bads check
execute if score %bads_conquer system matches 0 if score %bads_massacre system matches 0 unless score %two_player_mode system matches 1 if score %alive_bads var matches 1.. if score %alive_goods var matches ..1 unless score %alive_wraiths var matches 1.. run scoreboard players operation %ending system = %BADS_WIN constant
execute if score %bads_conquer system matches 1 if score %initial_bads var = %alive_goods var if score %alive_wraiths var matches ..0 run scoreboard players operation %ending system = %BADS_CONQUER_WIN constant
execute if score %bads_massacre system matches 1 if score %alive_bads var matches 1.. if score %alive_goods var matches ..0 if score %alive_wraiths var matches ..0 run scoreboard players operation %ending system = %BADS_WIN constant

# goods check
execute if score %alive_goods var matches 1.. if score %alive_bads var matches ..0 if score %alive_wraiths var matches ..0 run scoreboard players operation %ending system = %GOODS_WIN constant

# wraiths check
execute if score %alive_bads var matches ..0 if score %alive_wraiths var matches 1.. run scoreboard players operation %ending system = %WRAITHS_WIN constant

# lovers check, only 1 pair and possibly 1 cupid
execute if score %alive var matches 1..3 if score %alive_pairA var matches 1 if score %alive_pairB var matches 1 if score @p[tag=alive,tag=pairA] cupidPair = @p[tag=alive,tag=pairB] id run function ww:ending/lovers/check

# masochist ending is triggered in a different scenario

# 1 player alive condition: (mostly for two_player_mode)
execute if score %alive var matches 1 if score %alive_bads var matches 1 run scoreboard players operation %ending system = %BADS_WIN constant
execute if score %alive var matches 1 if score %alive_goods var matches 1 run scoreboard players operation %ending system = %GOODS_WIN constant
execute if score %alive var matches 1 if score %alive_wraiths var matches 1 run scoreboard players operation %ending system = %WRAITHS_WIN constant

execute if score %ending system = %BADS_WIN constant if score %alive_alphas var matches 1.. run function ww:ending/check/alpha
execute if score %ending system = %BADS_CONQUER_WIN constant if score %alive_alphas var matches 1.. run function ww:ending/check/alpha

execute if predicate ww:started if score %ending system = %BADS_WIN constant run function ww:ending/bads
execute if predicate ww:started if score %ending system = %WRAITHS_WIN constant run function ww:ending/wraiths
execute if predicate ww:started if score %ending system = %GOODS_WIN constant run function ww:ending/goods
execute if predicate ww:started if score %ending system = %LOVERS_WIN constant run function ww:ending/lovers/good
execute if predicate ww:started if score %ending system = %LOVERS_CUPID_WIN constant run function ww:ending/lovers/true
execute if predicate ww:started if score %ending system = %BADS_CONQUER_WIN constant run function ww:ending/bads_conquer
execute if predicate ww:started if score %ending system = %BADS_ALPHA_WIN constant run function ww:ending/bads_alpha

# no one survives
execute if predicate ww:started if score %alive var matches 0 run function ww:ending/damn