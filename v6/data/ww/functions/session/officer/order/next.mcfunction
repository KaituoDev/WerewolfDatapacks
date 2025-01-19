scoreboard players set %success var 0
execute as @a[scores={officerOrder=1..},tag=alive] if score @s officerOrder = %current officerOrder run tag @s add currentTarget
execute if entity @a[tag=currentTarget] run scoreboard players set %success var 1

execute if score %success var matches 1 run function ww:session/officer/order/success

tag @a remove officer
tag @p[tag=currentTarget] add officer

tag @a remove currentTarget
scoreboard players add %current officerOrder 1

# continue looping if no player found
execute if score %success var matches 0 if score %current officerOrder <= %max officerOrder run function ww:session/officer/order/next
execute if score %success var matches 0 if score %current officerOrder > %max officerOrder run function ww:session/officer/order/lost