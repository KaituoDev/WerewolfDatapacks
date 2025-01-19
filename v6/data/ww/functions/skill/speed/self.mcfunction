function ww:skill/__init

effect give @s speed 10 3 true
effect give @s jump_boost 10 3 true

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"體力增幅技能已發動 - 自身加速與跳躍提升10秒"}]

clear @s warped_fungus_on_a_stick{speed_self:1b} 1