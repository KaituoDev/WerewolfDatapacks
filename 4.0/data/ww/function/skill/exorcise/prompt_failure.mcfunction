# context: @s = attacker player | villager

tellraw @s [{"text":"[提示] ", "color": "yellow", "bold": true}, \
    {"text":"净化失败，目标不是狼人！", "color": "white", "bold": false}]

clear @s *[minecraft:custom_data~{exorcist_crystal:true}]

playsound block.anvil.place player @s