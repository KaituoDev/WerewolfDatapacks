function ww:skill/__init

tag @s add perm_invis

function ww:player/unmask

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"已進入隱形"}]

clear @s warped_fungus_on_a_stick{ghost_on:1b}
function ww:item/skill/ghost/off