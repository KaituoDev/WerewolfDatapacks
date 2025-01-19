## Running as the player with the most wolfVoteCount
tellraw @a[scores={onWolfList=1..}] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"white","bold":true},{"text":" 獲得 ","color":"white","bold":false},{"score":{"name":"@s","objective":"wolfVoteCount"},"color":"green","bold":true},{"text":" 票， 為今晚的行動對象","color":"white","bold":false}]

tag @s add wolfTarget