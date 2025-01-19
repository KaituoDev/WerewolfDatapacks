# context: @s = player

execute if function ww:game/mode/is_conquer run tellraw @s [ \
  {"text":"模式: ","color":"white","bold":false}, \
  {"text":"屠邊式","color":"aqua","bold":true} \
]

execute if function ww:game/mode/is_massacre run tellraw @s [ \
  {"text":"模式: ","color":"white","bold":false}, \
  {"text":"屠城式","color":"aqua","bold":true} \
]

execute if function ww:game/mode/is_teaming run tellraw @s [ \
  {"text":"模式: ","color":"white","bold":false}, \
  {"text":"組隊式","color":"aqua","bold":true} \
]

execute if function ww:game/mode/is_lunatic run tellraw @s [ \
  {"text":"模式: ","color":"white","bold":false}, \
  {"text":"瘋人院","color":"aqua","bold":true} \
]