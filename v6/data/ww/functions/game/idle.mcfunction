execute as @a[gamemode=creative] unless data entity @s Inventory[{id:"minecraft:written_book",tag:{setting:1b}}] run function ww:setting/book
execute as @a[gamemode=creative] unless data entity @s Inventory[{id:"minecraft:warped_fungus_on_a_stick",tag:{history:1b,reader:1b}}] run function ww:item/skill/history

execute as @a unless data entity @s Inventory[{id:"minecraft:written_book",tag:{intro:1b}}] run function ww:setting/intro
function ww:history/main

kill @e[type=item,nbt={Item:{tag:{intro:1b}}}]
# kill @e[type=item,nbt={Item:{tag:{history:1b}}}]

execute unless score %koumi_map system matches 1 run title @a[gamemode=adventure] actionbar {"text":"切換至創造模式以取得設定書","color":"gold","bold":true}

scoreboard players enable @a god
execute as @a[scores={god=1..}] run function ww:game/god

execute as @a[tag=!first_time] run function ww:game/first_time