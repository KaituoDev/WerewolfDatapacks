scoreboard players reset * morningVote
clear @a written_book

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"白狼自爆， 遊戲強制進入夜晚","color":"white","bold":false}]

function ww:time/swap