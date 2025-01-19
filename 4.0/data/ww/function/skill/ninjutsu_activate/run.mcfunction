# context: @s = player

# get playerRoleState.ninjaScroll
# use the scroll name to run function
# if ninjaScroll does not exist, run random
# clear both scroll and activate 

clear @s written_book[minecraft:custom_data~{"ww.book":"ww.skill.ninja_scroll"}]
clear @s *[custom_data~{"ninjutsu_activate":true}]
scoreboard players reset @s ww.ninjaScroll

function ww:player/role/get_state

data modify storage ww:temp activateInput set value {name: 'random'}
execute if entity @s[tag=!ww.fool] run \
  data modify storage ww:temp activateInput.name set from storage ww:output playerState.ninjaScroll

function ww:skill/ninjutsu_activate/_activate with storage ww:temp activateInput

function ww:player/role/_remove_state {path: 'ninjaScroll'}