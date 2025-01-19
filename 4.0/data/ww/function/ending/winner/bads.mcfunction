# context: server

execute if score %alpha_wolves ww.system matches 1.. if score %bads ww.system = %alpha_wolves ww.system run \
  return run function ww:ending/winner/alpha_wolves

execute if score %totalSpirits ww.system matches 1.. run function ww:ending/_title {title: '狼人胜利', subtitle: '人类灭亡 | 怨灵升天', titleColor: 'red'}
execute unless score %totalSpirits ww.system matches 1.. run function ww:ending/_title {title: '狼人胜利', subtitle: '人类灭亡', titleColor: 'red'}

scoreboard players add @a[tag=bads] ww.wins 1
tellraw @a [{"text":"胜者: ","color":"white","bold":false},{"selector":"@e[tag=bads]","color":"green","bold":true}]

return 1