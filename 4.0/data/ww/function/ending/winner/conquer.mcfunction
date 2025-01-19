# context: server
# scores: %bads ww.system, %goods ww.system, %spirits ww.system

execute unless score %goods ww.system matches 1 run return fail
execute unless score %spirits ww.system matches 0 run return fail

function ww:ending/_title {title: '狼人胜利', subtitle: '屠边结局', titleColor: 'red'}

scoreboard players add @a[predicate=ww:alive,tag=bads] ww.wins 1
tellraw @a [{"text":"胜者: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,tag=bads]","color":"green","bold":true}]

return 1