# context: @s = player
# inputs: {origin, mode}

# reset
data modify storage ww:memory config.MODE set value {CONQUER: 0b, MASSACRE: 0b, TEAMING: 0b, LUNATIC: 0b}

# new selection
$data modify storage ww:memory config.MODE.$(mode) set value 1b

$execute at @e[nbt={UUID:$(origin)}] run function ww:config/board/action/mode/update_signs

$tellraw @a [ \
  {"text":"已将模式设定为 ","color":"green","bold":true}, \
  {"nbt":"MODE_INTRO.$(mode).name","storage":"ww:memory","color":"aqua","bold":true}, \
  "\n", \
  {"nbt":"MODE_INTRO.$(mode).description","storage":"ww:memory","color":"white","bold":true, "interpret":true} \
]