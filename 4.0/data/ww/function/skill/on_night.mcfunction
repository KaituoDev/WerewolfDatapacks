# context: @s = player | villager

execute if function ww:config/flag/skill_gacha if predicate ww:alive if entity @s[type=player] run function ww:skill/gacha

execute if predicate ww:alive if function ww:player/flag/is_dying_today run function ww:player/dying_today