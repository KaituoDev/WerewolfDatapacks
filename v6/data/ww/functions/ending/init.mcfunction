# chat messages

tellraw @a ""
execute as @a run function ww:chat/separator

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"遊戲結束","bold":true,"color":"red"}]