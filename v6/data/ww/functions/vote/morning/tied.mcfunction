execute unless score %fast_mode system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@a[tag=currentMorningMax]","color":"white","bold":true},{"text":" 同票， 因此沒人被處決","color":"white","bold":true}]

execute if score %fast_mode system matches 1 as @p[tag=currentMorningMax,sort=random] run function ww:vote/morning/execute

tag @a remove currentMorningMax