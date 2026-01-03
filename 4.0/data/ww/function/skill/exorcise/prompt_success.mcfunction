# context: @s = attacker player | villager

tellraw @s [{"text":"[提示] ", "color": "aqua", "bold": true}, \
    {"text":"目标已被你净化为人类！", "color": "white", "bold": false}]

clear @s *[minecraft:custom_data~{exorcist_crystal:true}]

playsound entity.experience_orb.pickup player @s
effect give @s invisibility 5 0 true
effect give @s speed 5 1 true