# if there are nearby buttons, deny placements, otherwise remove denied tag
execute as @a[tag=placing] at @s run function fd:button/placing/check

# if player is allowed to place buttons, and does not have a button in hand
execute as @a[predicate=fd:switching_button] run function fd:button/placing/obtain/cycle

title @a[tag=placing,tag=!denied] actionbar [{"text":"按 ","color":"gold","italic":false},{"keybind":"key.drop","color":"red","bold":true,"italic":false},{"text":" 切換按鈕種類","color":"gold","italic":false}]

title @a[tag=placing,tag=denied] actionbar {"text":"此區域不得放置按鈕","color":"red","bold":true}

kill @e[type=item,nbt={Item:{tag:{button:1b}}}]
clear @a[tag=denied] #minecraft:buttons

execute as @a[tag=placing] run function fd:button/used/buttons
execute as @a[scores={button_placed=1..}] at @s run function fd:button/placing/search/init

# if placed buttons get washed away
execute as @e[type=area_effect_cloud,tag=button] at @s unless block ~ ~ ~ #minecraft:buttons run function fd:button/placing/refund

# if all buttons have been placed, begin phase 2 early
execute unless entity @a[tag=placing] unless score %SKIPPING var matches 1 run function fd:button/phase_1/skip