# context: @s = player
# inputs: {player, suspects}

$tellraw @s [ \
  "\n鉴识结果: \n", \
  {"text":"死者: ","color":"white","bold":false}, \
  {"text":"$(player)\n","color":"red","bold":true}, \
  {"text":"嫌疑人: ","color":"white","bold":false}, \
  {"text":"$(suspects)","color":"dark_purple","bold":true} \
]