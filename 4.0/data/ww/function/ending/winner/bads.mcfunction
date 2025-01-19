# context: server

execute if score %alpha_wolves ww.system matches 1.. if score %bads ww.system = %alpha_wolves ww.system run \
  return run function ww:ending/winner/alpha_wolves

execute if score %totalSpirits ww.system matches 1.. run function ww:ending/_title {title: '狼人勝利', subtitle: '人類滅亡 | 怨靈升天', titleColor: 'red'}
execute unless score %totalSpirits ww.system matches 1.. run function ww:ending/_title {title: '狼人勝利', subtitle: '人類滅亡', titleColor: 'red'}

scoreboard players add @a[predicate=ww:alive,tag=bads] ww.wins 1
tellraw @a [{"text":"勝者: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,tag=bads]","color":"green","bold":true}]

return 1