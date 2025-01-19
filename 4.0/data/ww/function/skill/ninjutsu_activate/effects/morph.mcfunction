# context: @s = player | villager

execute if entity @s[tag=!ww.fool] run function ww:skill/ninjutsu_activate/effects/morph/init
execute if entity @s[tag=ww.fool] as @a[predicate=ww:alive] run \
  function ww:skill/ninjutsu_activate/effects/morph/init

execute as @a run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"忍者发动了 ","color":"white","bold":false},{"text":"化猫","color":"green","bold":true}]' \
}