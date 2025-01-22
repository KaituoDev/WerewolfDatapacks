# context: @s = player
clear @s *[minecraft:custom_data~{pool_info:true}]
item replace entity @s hotbar.7 with warped_fungus_on_a_stick[custom_model_data=23301,item_name='{"bold":true,"color":"aqua","text":"显示职业配置"}',unbreakable={},rarity="epic",custom_data={function: "ww:config/info/pool", pool_info: true}] 1