# context: @s = player

clear @s *[minecraft:custom_data~{switch:true}]

execute if entity @s[tag=!ww.fool] run tag @n[predicate=ww:alive,sort=furthest,distance=0.01..] add ww.switch.candidate
execute if entity @s[tag=ww.fool] run tag @n[predicate=ww:alive,distance=0.01..] add ww.switch.candidate

tag @s add this
execute at @s summon marker run function ww:skill/switch/teleport
tag @s remove this

function ww:chat/_dm {type: 'rich_info', message: '[{"text":"你使用了代罪 ","color":"white","bold":false},{"selector":"@n[tag=ww.switch.candidate]","color":"green","bold":true},{"text":" 交換位置","color":"white","bold":false}]'}

execute as @n[tag=ww.switch.candidate] run \
  function ww:chat/_dm {type: 'info', message: '你被代罪換過來了'}

tag @e[tag=ww.switch.candidate] remove ww.switch.candidate