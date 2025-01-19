# context: @s = player | villager
# score: @s ww.ninjaScroll

data modify storage ww:temp setStateInput set value {path: 'ninjaScroll', value: 'random'}
execute if score @s ww.ninjaScroll matches 1 run data modify storage ww:temp setStateInput.value set value 'morph'
execute if score @s ww.ninjaScroll matches 2 run data modify storage ww:temp setStateInput.value set value 'tree'
execute if score @s ww.ninjaScroll matches 3 run data modify storage ww:temp setStateInput.value set value 'crowd'
execute if score @s ww.ninjaScroll matches 4 run data modify storage ww:temp setStateInput.value set value 'smoke'
execute if score @s ww.ninjaScroll matches 5 run data modify storage ww:temp setStateInput.value set value 'mini'

data modify storage ww:temp infoInput set value {}
data modify storage ww:temp infoInput.name set from storage ww:temp setStateInput.value
function ww:book/action/ninja_scroll/_info with storage ww:temp infoInput

function ww:player/role/_set_state with storage ww:temp setStateInput

scoreboard players reset @s ww.ninjaScroll
scoreboard players enable @s ww.ninjaScroll

return 1