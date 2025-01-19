# context: @s = player
clear @s *[minecraft:custom_data~{config_board:true}]
give @s warped_fungus_on_a_stick[item_name='{"bold":true,"color":"aqua","text":"设置设定面板"}',unbreakable={},rarity="epic",custom_data={function: "ww:config/board/init", config_board: true}] 1