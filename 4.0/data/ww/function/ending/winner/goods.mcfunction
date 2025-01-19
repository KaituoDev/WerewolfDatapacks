# context: server

execute if score %totalSpirits ww.system matches 1.. run function ww:ending/_title {title: '人類勝利', subtitle: '狼人滅絕 | 怨靈升天', titleColor: '#50d300'}
execute unless score %totalSpirits ww.system matches 1.. run function ww:ending/_title {title: '人類勝利', subtitle: '狼人滅絕', titleColor: '#50d300'}

scoreboard players add @a[predicate=ww:alive,tag=goods] ww.wins 1
tellraw @a [{"text":"勝者: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,tag=goods]","color":"green","bold":true}]

return 1