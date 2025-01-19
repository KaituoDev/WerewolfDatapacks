# context: @s = player

clear @s *[minecraft:custom_data~{lunatic_sword:true}]

give @s iron_sword[ \
  item_name='{"bold":true,"color":"aqua","text":"疯人剑"}', \
  unbreakable={show_in_tooltip:false},rarity="epic", \
  custom_data={lunatic_sword: true}, \
  lore=['"砍向一名玩家"','"若该玩家为同阵营"','"则无事发生"','"若不同阵营则立即杀死对方"','"无视无敌"'] \
] 1