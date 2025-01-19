function ww:skill/__init

tag @s add this

execute if entity @s[tag=wolf,tag=!fool] run tag @r[tag=wolf,tag=!this] add tp_target
execute if entity @s[tag=wolf,tag=fool] run tag @r[tag=!wolf,tag=!this] add tp_target
execute if entity @s[tag=!wolf,tag=!fool] run tag @r[tag=!wolf,tag=!this] add tp_target
execute if entity @s[tag=!wolf,tag=fool] run tag @r[tag=wolf,tag=!this] add tp_target

execute unless entity @a[tag=tp_target] run function ww:skill/tp/self/fail
execute if entity @a[tag=tp_target] run function ww:skill/tp/self/success

tag @s remove this
tag @a remove tp_target