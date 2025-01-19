# context: @s = player | villager who got the most votes

function ww:ending/_title {title: '抖M勝利', subtitle: '高票當選', titleColor: '#50d300'}

scoreboard players add @s[type=player] ww.wins 1
tellraw @a [{"text":"勝者: ","color":"white","bold":false},{"selector":"@s","color":"green","bold":true}]

return 1