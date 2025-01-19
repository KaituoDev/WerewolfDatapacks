# context: @s = player

clear @s *[custom_data~{"christmas_gift":true}] 1

# gets either coal: darkness+slowness, toy: speed, gold: immune
execute store result score %result ww.var run function ww:utils/_rand {min: 1, max: 3}
execute if score %result ww.var matches 1 run function ww:skill/christmas_gift/gifts/coal
execute if score %result ww.var matches 2 run function ww:skill/christmas_gift/gifts/toys
execute if score %result ww.var matches 3 run function ww:skill/christmas_gift/gifts/gold