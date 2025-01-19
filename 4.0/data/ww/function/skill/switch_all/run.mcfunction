# context: @s = player

clear @s *[minecraft:custom_data~{switch_all:true}]

execute as @e[predicate=ww:alive,sort=random] at @s run function ww:skill/switch_all/setup
execute as @e[predicate=ww:alive,sort=random] at @s run function ww:skill/switch_all/teleport

execute as @a run \
  function ww:chat/_dm {type: 'info', message: '全體互換位置'}

kill @e[type=marker,tag=ww.switchAllOrigin]