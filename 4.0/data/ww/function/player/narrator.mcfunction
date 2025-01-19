# context: @s = player

scoreboard players reset @s ww.narrator
scoreboard players reset @s ww.skill

function ww:player/_get_state {name: 'playerNarrator'}
execute unless data storage ww:output playerState run scoreboard players set %narratorSuccess ww.var 0
execute if data storage ww:output playerState store result score %narratorSuccess ww.var run data get storage ww:output playerState

# previously not a narrator -> become one
execute if score %narratorSuccess ww.var matches 0 run function ww:player/_set_state {name: 'playerNarrator', value: 1}
execute if score %narratorSuccess ww.var matches 0 run function ww:chat/_dm {type:'info',message:'你成為旁白了, 遊戲開始後不會參與遊戲'}

execute if score %narratorSuccess ww.var matches 1 run function ww:player/_set_state {name: 'playerNarrator', value: 0}
execute if score %narratorSuccess ww.var matches 1 run function ww:chat/_dm {type:'info',message:'你成為一般玩家了'}

function ww:player/tag/sanitize