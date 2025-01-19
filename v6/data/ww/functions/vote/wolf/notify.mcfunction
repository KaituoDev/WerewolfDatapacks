## notify witches and ninjas with wolves' decision
## INPUT: @p[tag=wolfTarget]

# witches
execute if entity @a[tag=wolfTarget] run tellraw @a[tag=alive,tag=witch] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"狼群已盯上 "},{"selector":"@p[tag=wolfTarget]","bold":true}]
execute unless entity @a[tag=wolfTarget] run tellraw @a[tag=alive,tag=witch] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"狼群並未盯上任何人"}]

# ninjas
tellraw @a[tag=alive,tag=ninja,tag=wolfTarget] [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"","bold":false},{"text":"狼群已盯上你了"}]
tellraw @a[tag=alive,tag=ninja,tag=!wolfTarget] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你沒有被狼群盯上"}]