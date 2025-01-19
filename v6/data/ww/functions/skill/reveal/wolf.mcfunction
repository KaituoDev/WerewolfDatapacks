function ww:skill/__init

tag @s add this

execute if entity @s[tag=fool] run function ww:skill/reveal/wolf/fool
execute if entity @s[tag=!fool,tag=!alpha] run function ww:skill/reveal/wolf/default
execute if entity @s[tag=!fool,tag=alpha] run function ww:skill/reveal/wolf/alpha

tag @s remove this