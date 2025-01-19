function ww:skill/__init
tag @s remove hijacking

execute if entity @s[predicate=!ww:armed] run function ww:player/unmask

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"已還原身分"}]

clear @s warped_fungus_on_a_stick{skill:1b,hijack_off:1b}
function ww:item/skill/hijack/on