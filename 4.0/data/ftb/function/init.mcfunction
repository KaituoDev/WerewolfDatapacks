# context: server

# create used buttons objectives
data modify storage ftb:memory BUTTONS set value [ \
  'oak_button', \
  'spruce_button', \
  'birch_button', \
  'jungle_button', \
  'acacia_button', \
  'dark_oak_button', \
  'mangrove_button', \
  'cherry_button', \
  'bamboo_button', \
  'crimson_button', \
  'warped_button', \
  'stone_button', \
  'polished_blackstone_button' \
]

scoreboard objectives add ftb.var dummy
scoreboard objectives add ftb.system dummy
scoreboard objectives add ftb.buttonIndex dummy

bossbar add ftb:game_status ""