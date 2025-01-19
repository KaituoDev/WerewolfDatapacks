# context: server

function ww:ending/_title {title: '怨灵胜利', subtitle: '尚有怨灵存在', titleColor: 'dark_red'}
scoreboard players add @a[predicate=ww:alive,tag=spirits] ww.wins 1
tellraw @a [{"text":"胜者: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,tag=spirits]","color":"green","bold":true}]

return 1