# context: server

function ww:ending/_title {title: '色狼胜利', subtitle: '色狼成功骚扰到所有人', titleColor: 'light_purple'}

scoreboard players add @a[predicate=ww:alive,tag=hentai] ww.wins 1
tellraw @a [{"text":"胜者: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,tag=hentai]","color":"green","bold":true}]

return 1