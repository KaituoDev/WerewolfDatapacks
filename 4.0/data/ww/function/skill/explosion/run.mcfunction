# context: @s = player | villager

clear @s *[minecraft:custom_data~{explosion:true}]

particle minecraft:explosion ~ ~ ~ 7 7 7 1 500 force
playsound minecraft:entity.dragon_fireball.explode master @a[distance=..20]

tag @s add this
execute as @a run function ww:chat/_dm { type: 'rich_info', \
  message: '[{"selector":"@n[tag=this]","color":"red"},{"text":" 自爆了, 强制进入夜晚","color":"white","bold":false}]' \
}
tag @s remove this

function ww:player/dead
execute if entity @s[tag=ww.fool] as @a run function ww:chat/_dm {type: 'lmao', message: '没事, 他是蠢的, 大家继续投票'}
execute if entity @s[tag=ww.fool] run return 0

function ww:player/_get_state {name: 'playerRole'}
data modify storage ww:temp applyInput set value {}
data modify storage ww:temp applyInput.campaign set from storage ww:output playerState.campaign.id
execute at @s run function ww:skill/explosion/_apply with storage ww:temp applyInput

function ww:game/elimination/reset
function ww:time/skip

