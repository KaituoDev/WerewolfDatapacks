function ww:vote/cupid/pairing

## CONTEXT: @s = cupid, @p[tag=currentTarget] = player being paired

execute if score %success var matches 1 run tag @s add pairedB
tag @p[tag=currentTarget] add pairB

execute if score %success var matches 1 run function ww:vote/cupid/success
execute if score %success var matches 0 run function ww:vote/cupid/failed

execute if entity @s[tag=pairedA,tag=pairedB] run tag @s add linked
execute if entity @s[tag=linked] run function ww:vote/cupid/link_pairs

tag @a remove currentTarget

execute if score %success var matches 1 run clear @s written_book{pair_b:1b,vote:1b}