## CONTEXT: 1 ~ 3 alive players where a pair exists, a related cupid may exist as well

# check if there's only 1 cupid max
# check if cupid exists and is related
execute store result score %cupids var if entity @a[tag=cupid,tag=alive,tag=pairedA,tag=pairedB]
execute if score %cupids var matches 1 run function ww:ending/lovers/find_cupid

# if yes, set ending to %LOVERS_CUPID_WIN constant
execute if entity @a[tag=currentCupid] run scoreboard players operation %ending system = %LOVERS_CUPID_WIN constant

# if no, set ending to %LOVERS_WIN constant
execute unless entity @a[tag=currentCupid] run scoreboard players operation %ending system = %LOVERS_WIN constant

# check if there exists a player who isn't related to the pair and isn't currentCupid
# if true, don't end the game (let the lovers kill that player)
execute if entity @p[tag=alive,tag=!currentCupid,tag=!pairA,tag=!pairB] run scoreboard players set %ending system 0