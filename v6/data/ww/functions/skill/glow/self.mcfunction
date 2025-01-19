# running as a fool

function ww:skill/__init

effect give @s glowing 10 0 true

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"狼人開眼技能已發動 - 全體發光10秒"}]

clear @s warped_fungus_on_a_stick{glow_all:1b} 1