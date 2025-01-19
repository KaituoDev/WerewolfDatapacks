# context: @s = player | villager who got the most votes

function ww:ending/_title {title: '抖M胜利', subtitle: '高票当选', titleColor: '#50d300'}

scoreboard players add @s[type=player] ww.wins 1
tellraw @a [{"text":"胜者: ","color":"white","bold":false},{"selector":"@s","color":"green","bold":true}]

return 1