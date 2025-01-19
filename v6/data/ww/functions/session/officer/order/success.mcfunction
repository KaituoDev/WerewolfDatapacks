## CONTEXT: @p[tag=currentTarget] is the new officer

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 成為了新的警長","color":"white","bold":false}]
team leave @a[team=officer]
team join officer @p[tag=currentTarget]