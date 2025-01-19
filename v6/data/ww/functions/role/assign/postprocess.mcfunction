# new seer
execute unless entity @a[tag=seer,tag=!apprentice] run function ww:role/seer/next

# wraiths are always immortal during night
tag @a[tag=wraiths,tag=!fool,tag=alive] add immortal

scoreboard players set @a[tag=wolf] onWolfList 1
scoreboard players set @a[tag=trickster] onWolfList 1