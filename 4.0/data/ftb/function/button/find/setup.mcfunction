# # context: @s = player
# location: at the button location centered

tag @s add this
execute summon interaction run function ftb:button/find/setup/interaction
execute summon marker run function ftb:button/find/setup/marker
tag @s remove this