execute as @e[type=minecraft:trident] run data modify entity @s life set value 10000

#execute as @e[tag=starbucks,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..5,predicate=ww:alive,predicate=!ww:invis] eyes
#execute if predicate ww:is_night positioned -411 58 356 if entity @a[distance=..6,predicate=!ww:invis,predicate=!ww:god] run function pm:map/2/jumpscare
#execute if predicate ww:is_night positioned -411 58 356 unless entity @a[distance=..6,predicate=!ww:invis,predicate=!ww:god] run function pm:map/2/hide
#execute unless predicate ww:is_morning run function pm:map/2/hide

#data merge block -364 59 400 {"GlowingText":1b,Text1:'{"text":""}',Text2:'{"text":"不给拉","color":"black"}',Text3:'{"text":""}',Text4:'{"text":""}'}
#setblock -360 56 400 air
#setblock -364 58 400 minecraft:lever[powered=false,facing=west]