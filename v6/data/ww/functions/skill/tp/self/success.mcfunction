tp @p[tag=tp_target] @s

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"召集同伴技能已發動 - "},{"text":"將 "},{"selector":"@p[tag=tp_target]"},{"text":" 拉過來了"}]

tellraw @p[tag=tp_target] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"召集同伴技能已發動 - "},{"text":"你被 "},{"selector":"@s"},{"text":" 拉過去了"}]

clear @s warped_fungus_on_a_stick{tp_self:1b}