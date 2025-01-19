# context: server

function ww:init/data/roles
function ww:init/data/intro
function ww:init/data/skills
function ww:init/data/ai_names
function ww:init/data/modes

execute unless data storage ww:memory pool run data modify storage ww:memory pool set value {}

execute unless score %currentGlobalId ww.system matches 1.. run scoreboard players set %currentGlobalId ww.system 0
execute unless score %currentBookId ww.system matches 1.. run scoreboard players set %currentBookId ww.system 0

# if the pool number for a role is greater than 0, then it will be added to the array
# if it's 0, then removed from the array
# if for some reason it's bugged, just make the array contain all the roles
execute unless data storage ww:memory poolKeys run data modify storage ww:memory poolKeys set value []

execute unless data storage ww:memory playerData run data modify storage ww:memory playerData set value {id: {}, name: {}}

# default configs
execute unless data storage ww:memory config run data modify storage ww:memory config set value {}

# time configs
execute unless data storage ww:memory config.MAX_DAY_TICKS run data modify storage ww:memory config.MAX_DAY_TICKS set value 1200
execute unless data storage ww:memory config.MAX_NIGHT_TICKS run data modify storage ww:memory config.MAX_NIGHT_TICKS set value 1200
execute unless data storage ww:memory config.MAX_FTB_HIDE_TICKS run data modify storage ww:memory config.MAX_FTB_HIDE_TICKS set value 1200
execute unless data storage ww:memory config.MAX_FTB_FIND_TICKS run data modify storage ww:memory config.MAX_FTB_FIND_TICKS set value 1200

# map configs
execute unless data storage ww:memory config.MAPS run function ww:init/data/maps
execute unless data storage ww:memory config.RANDOM_MAP run data modify storage ww:memory config.RANDOM_MAP set value 0
data modify storage ww:memory config.MAX_ALLOWED_MAP_INDEX set value 17

# total of 13 maps:
# ["雪町","美術館","水晶風暴","河堤社區","經典城鎮","渡假村","Underground","威尼斯小鎮","花村","酷米溫泉旅館","卡歐魯の村莊","卡歐魯の混亂豪宅","卡歐魯の都市"]
execute if predicate ww:is_our_map run data modify storage ww:memory config.MAX_ALLOWED_MAP_INDEX set value 11

# lobby configs
execute unless data storage ww:memory config.LOBBY run data modify storage ww:memory config.LOBBY set value {location: '~ ~ ~', rotation: '0 0'}

# mode configs
execute unless data storage ww:memory config.MODE run data modify storage ww:memory config.MODE set value {CONQUER: 0b, MASSACRE: 1b, TEAMING: 0b} 

# detail configs
# execute unless data storage ww:memory config.ENABLE_APPRENTICE_SEER run data modify storage ww:memory config.ENABLE_APPRENTICE_SEER set value 0
execute unless data storage ww:memory config.ENABLE_DEAD_THIEF_STEAL run data modify storage ww:memory config.ENABLE_DEAD_THIEF_STEAL set value 0
execute unless data storage ww:memory config.VOTE_ITEM_TYPE run data modify storage ww:memory config.VOTE_ITEM_TYPE set value 0
execute unless data storage ww:memory config.GLOWING_ON_DAY run data modify storage ww:memory config.GLOWING_ON_DAY set value 0
execute unless data storage ww:memory config.GLOWING_PLAYERS_REMAIN run data modify storage ww:memory config.GLOWING_PLAYERS_REMAIN set value 0
execute unless data storage ww:memory config.VOTE_DRAW_HANDLING run data modify storage ww:memory config.VOTE_DRAW_HANDLING set value 0
execute unless data storage ww:memory config.ENABLE_DEATH_CAUSE run data modify storage ww:memory config.ENABLE_DEATH_CAUSE set value 1
execute unless data storage ww:memory config.ENABLE_AI_PROPHECY_INFO run data modify storage ww:memory config.ENABLE_AI_PROPHECY_INFO set value 0
execute unless data storage ww:memory config.ENABLE_CLONE_HIJACK_DATA run data modify storage ww:memory config.ENABLE_CLONE_HIJACK_DATA set value 0
execute unless data storage ww:memory config.ENABLE_STEAL_LOVERS run data modify storage ww:memory config.ENABLE_STEAL_LOVERS set value 0
execute unless data storage ww:memory config.ENABLE_AI_QUESTION_INFO run data modify storage ww:memory config.ENABLE_AI_QUESTION_INFO set value 0
execute unless data storage ww:memory config.ENABLE_RIFLE_RESET run data modify storage ww:memory config.ENABLE_RIFLE_RESET set value 0

# amusing configs
execute unless data storage ww:memory config.AI_COUNT run data modify storage ww:memory config.AI_COUNT set value 0
execute unless data storage ww:memory config.OFFICER_COUNT run data modify storage ww:memory config.OFFICER_COUNT set value 0
execute unless data storage ww:memory config.FOOL_COUNT run data modify storage ww:memory config.FOOL_COUNT set value 0
execute unless data storage ww:memory config.LOVERS_COUNT run data modify storage ww:memory config.LOVERS_COUNT set value 2
execute unless data storage ww:memory config.ENABLE_SKILL_GACHA run data modify storage ww:memory config.ENABLE_SKILL_GACHA set value 0
execute unless data storage ww:memory config.ENABLE_FIND_THE_BUTTON run data modify storage ww:memory config.ENABLE_FIND_THE_BUTTON set value 0

# other configs
execute unless data storage ww:memory config.ENABLE_SHOW_WINS run data modify storage ww:memory config.ENABLE_SHOW_WINS set value 0
