# context: @s = player

clear @s *[minecraft:custom_data~{za_warudo:true}]

tag @s add this
execute as @e[predicate=ww:alive,tag=!this,distance=..100] at @s run function ww:skill/za_warudo/init
tag @s remove this
execute as @e[tag=ww.mount,distance=..100] at @s run function ww:skill/za_warudo/init
execute as @e[tag=ww.killer_ai,type=zombified_piglin,distance=..100] at @s run function ww:skill/za_warudo/init

function ww:chat/_dm {type: 'info', message: '你发动了时间暂停'}