# context: server

execute if score %totalSpirits ww.system matches 1.. run function ww:ending/_title {title: '人类胜利', subtitle: '狼人灭绝 | 怨灵升天', titleColor: '#50d300'}
execute unless score %totalSpirits ww.system matches 1.. run function ww:ending/_title {title: '人类胜利', subtitle: '狼人灭绝', titleColor: '#50d300'}

scoreboard players add @a[predicate=ww:alive,tag=goods] ww.wins 1
tellraw @a [{"text":"胜者: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,tag=goods]","color":"green","bold":true}]

return 1