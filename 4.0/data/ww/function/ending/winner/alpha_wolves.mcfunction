# context: server

function ww:ending/_title {title: '原初狼勝利', subtitle: '原初狼成功背叛所有人', titleColor: 'red'}

scoreboard players add @a[predicate=ww:alive,tag=alpha_wolf] ww.wins 1
tellraw @a [{"text":"勝者: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,tag=alpha_wolf]","color":"green","bold":true}]

return 1