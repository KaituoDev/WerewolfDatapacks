# context: @s = player with full set suit_up armors

effect give @s invisibility 5 0 true

effect give @s speed 5 0 true
execute if score %isBloodMoon ww.system matches 1 run effect give @s speed 5 2 true
execute if entity @s[tag=rage_wolf] run function ww:skill/suit/raging