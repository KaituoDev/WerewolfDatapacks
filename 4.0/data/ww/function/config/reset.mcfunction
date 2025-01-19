# context: @s = player

data modify storage ww:memory config.MAX_DAY_TICKS set value 1200
data modify storage ww:memory config.MAX_NIGHT_TICKS set value 1200

data modify storage ww:memory config.RANDOM_MAP set value 0
data modify storage ww:memory config.MAX_ALLOWED_MAP_INDEX set value 17
execute if predicate ww:is_our_map run data modify storage ww:memory config.MAX_ALLOWED_MAP_INDEX set value 12

data modify storage ww:memory config.MODE set value {CONQUER: 0b, MASSACRE: 1b, TEAMING: 0b, LUNATIC: 0b}

data modify storage ww:memory config.ENABLE_DEAD_THIEF_STEAL set value 0
data modify storage ww:memory config.VOTE_ITEM_TYPE set value 0
data modify storage ww:memory config.GLOWING_ON_DAY set value 0
data modify storage ww:memory config.GLOWING_PLAYERS_REMAIN set value 0
data modify storage ww:memory config.VOTE_DRAW_HANDLING set value 0
data modify storage ww:memory config.ENABLE_DEATH_CAUSE set value 1

data modify storage ww:memory config.AI_COUNT set value 0
data modify storage ww:memory config.OFFICER_COUNT set value 0
data modify storage ww:memory config.FOOL_COUNT set value 0
data modify storage ww:memory config.LOVERS_COUNT set value 2
data modify storage ww:memory config.ENABLE_SKILL_GACHA set value 0
data modify storage ww:memory config.ENABLE_FIND_THE_BUTTON set value 0

data modify storage ww:memory config.ENABLE_SHOW_WINS set value 1

