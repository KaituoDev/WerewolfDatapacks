# context: @s = player
# location: at @s

scoreboard players reset @s ww.skill
data modify storage ww:temp runFunctionInput set value {}

# mainhand
data modify storage ww:temp runFunctionInput.func set from entity @s SelectedItem.components."minecraft:custom_data".function

# offhand
execute unless data storage ww:temp runFunctionInput.func run \
  data modify storage ww:temp runFunctionInput.func set from entity @s Inventory[{Slot: -106b}].components."minecraft:custom_data".function

# run function
execute if data storage ww:temp runFunctionInput.func run function ww:player/skill/_run with storage ww:temp runFunctionInput