# context: @s = attacker, @n[tag=this] = victim

execute unless predicate ww:is_night run return fail

tag @s add this_hentai
execute as @a[tag=hentai] run function ww:chat/_dm {type: 'rich_info', message: \
  '[{"selector":"@n[tag=this]","color":"red","bold":true},{"text":" 被 ","color":"white","bold":false},{"selector":"@n[tag=this_hentai]","color":"green","bold":true},{"text":" 骚扰了","color":"white","bold":false}]' \
}
tag @s remove this_hentai

execute as @n[tag=this] run function ww:player/_set_state {name: 'playerHarassed', value: 1}
execute as @n[tag=this] run function ww:player/tag/sanitize