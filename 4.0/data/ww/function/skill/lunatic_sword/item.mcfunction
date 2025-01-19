# context: @s = player

clear @s *[minecraft:custom_data~{lunatic_sword:true}]

give @s iron_sword[ \
  item_name='{"bold":true,"color":"aqua","text":"瘋人劍"}', \
  unbreakable={show_in_tooltip:false},rarity="epic", \
  custom_data={lunatic_sword: true}, \
  lore=['"砍向一名玩家"','"若該玩家為同陣營"','"則無事發生"','"若不同陣營則立即殺死對方"','"無視無敵"'] \
] 1