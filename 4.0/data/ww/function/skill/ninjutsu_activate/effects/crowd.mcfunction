# context: @s = player | villager

scoreboard players add @s ww.forceInvis 200

execute if entity @s[tag=!ww.fool] at @s summon villager run \
  function ww:skill/ninjutsu_activate/effects/crowd/setup
execute if entity @s[tag=!ww.fool] at @s summon villager run \
  function ww:skill/ninjutsu_activate/effects/crowd/setup
execute if entity @s[tag=!ww.fool] at @s summon villager run \
  function ww:skill/ninjutsu_activate/effects/crowd/setup
execute if entity @s[tag=!ww.fool] at @s summon villager run \
  function ww:skill/ninjutsu_activate/effects/crowd/setup
execute if entity @s[tag=!ww.fool] at @s summon villager run \
  function ww:skill/ninjutsu_activate/effects/crowd/setup

execute if entity @s[tag=ww.fool] at @s run tp @n[sort=furthest,predicate=ww:alive] @s

execute as @a run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"忍者发动了 ","color":"white","bold":false},{"text":"人遁","color":"green","bold":true}]' \
}