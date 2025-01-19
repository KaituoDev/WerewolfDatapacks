execute unless score @s morningVote matches 1.. run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"你尚未票人"}]

execute if score @s morningVote matches 1.. run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","bold":true},{"text":" 反悔了投票","color":"red","bold":true}]

scoreboard players reset @s morningVote
function ww:vote/morning/count