# Trackers
# execute as @a[tag=alive,predicate=ww:mainhand/tracker/goods] at @s run function ww:skill/tracker/goods/mainhand
# execute as @a[tag=alive,predicate=ww:offhand/tracker/goods] at @s run function ww:skill/tracker/goods/offhand
execute as @a[tag=alive,predicate=ww:mainhand/netherite_axe] at @s facing entity @p[tag=alive,tag=goods,tag=!trickster,predicate=!ww:invis] eyes positioned ~ ~1.5 ~ positioned ^ ^ ^2 run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 1 0 force @s

execute if entity @e[type=marker,tag=grave] as @a[tag=alive,predicate=ww:mainhand/shovel] run function ww:role/digger/indicator
execute if entity @e[type=marker,tag=grave] as @a[tag=alive,predicate=ww:offhand/shovel] run function ww:role/digger/indicator

# Permanent Invisible Effect
scoreboard players set @a[tag=perm_invis] invisible 10
effect give @a[tag=perm_invis,tag=fool] glowing 1 0 true

# Armed Effects
scoreboard players set @a[predicate=ww:armed] invisible 6
effect give @a[predicate=ww:armed,tag=!fool] speed 5 1 true
effect give @a[predicate=ww:armed] jump_boost 5 1 true
effect give @a[predicate=ww:armed,tag=fool] slowness 5 1 true

# Masked Equipping (Hijack Wolf passive)
execute if entity @a[tag=alive,tag=hijack,tag=wolf] run effect give @a invisibility 1 0 true
execute if entity @a[tag=alive,tag=hijack,tag=wolf] as @a[tag=alive,predicate=!ww:masked] unless score @s invisible matches 1.. run function ww:player/mask
execute if entity @a[tag=alive,tag=hijack,tag=wolf] as @a[tag=alive,scores={invisible=1..},predicate=ww:masked] run function ww:player/unmask

# Immortal Effects
scoreboard players set @a[tag=immortal] immune 2
execute unless entity @a[tag=goods,tag=alive] if entity @a[tag=alive,tag=wraiths,tag=immortal] run function ww:player/mortal_all

# Attraction Effects
execute as @a[scores={attraction=1..}] at @s run function ww:role/siren/attraction

# Grave Effects
execute at @e[type=marker,tag=grave] positioned ~ ~0.5 ~ run function ww:particles/grave

# When "BADS" killed someone
execute if score %riotNightDeathCount system matches 1.. run function ww:time/force_morning