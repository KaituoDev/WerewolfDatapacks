# context: server, @e[tag=ww.loversAlive] = lovers winners

function ww:ending/_title {title: '戀人勝利', subtitle: '場上僅存戀人', titleColor: '#FFC0CB'}
scoreboard players add @a[predicate=ww:alive,tag=ww.loversAlive] ww.wins 1
tellraw @a [{"text":"勝者: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,tag=ww.loversAlive]","color":"green","bold":true}]

return 1