function ww:skill/__init

tag @s remove perm_invis
effect clear @s invisibility
scoreboard players set @s invisible 0

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"已現形"}]

clear @s warped_fungus_on_a_stick{ghost_off:1b}

function ww:item/skill/ghost/on