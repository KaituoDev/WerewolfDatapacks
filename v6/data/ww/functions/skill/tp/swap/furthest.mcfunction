tag @s add this
tag @p[tag=alive,tag=!this,sort=furthest] add tp_target
tag @s remove this

function ww:skill/tp/swap/summon

tp @p[tag=tp_target]
tp @p[tag=tp_target] @e[type=marker,tag=swap_tp,limit=1]

kill @e[type=marker,tag=swap_tp]

tag @a remove tp_target