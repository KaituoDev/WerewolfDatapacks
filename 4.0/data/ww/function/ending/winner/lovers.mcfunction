# context: server, @e[tag=ww.loversAlive] = lovers winners

function ww:ending/_title {title: '恋人胜利', subtitle: '场上仅存恋人', titleColor: '#FFC0CB'}
scoreboard players add @a[predicate=ww:alive,tag=ww.loversAlive] ww.wins 1
tellraw @a [{"text":"胜者: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,tag=ww.loversAlive]","color":"green","bold":true}]

return 1