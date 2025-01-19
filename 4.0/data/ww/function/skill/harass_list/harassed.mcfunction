# context: @s = player attacked by a hentai, on attacker = hentai

advancement revoke @s only ww:hit_by_hentai

execute unless predicate ww:is_night run return fail

execute on attacker run tag @s add this
tag @s add this_hentai
execute as @a[tag=hentai] run function ww:chat/_dm {type: 'rich_info', message: \
  '[{"selector":"@n[tag=this_hentai]","color":"red","bold":true},{"text":" 被 ","color":"white","bold":false},{"selector":"@n[tag=this]","color":"green","bold":true},{"text":" 骚扰了","color":"white","bold":false}]' \
}
tag @s remove this_hentai
tag @e[tag=this] remove this

function ww:player/_set_state {name: 'playerHarassed', value: 1}
function ww:player/tag/sanitize