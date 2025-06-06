# context: @s = player

# pool
function ww:config/info/pool

# map
function ww:config/info/map

# mode
function ww:config/info/mode

# time
function ww:config/info/time

# amusing + detail
execute if function ww:config/flag/dead_thief_steal run tellraw @s [ \
  {"text":"♦ ","color":"red"}, \
  {"text":"盗贼死后依旧可偷职业","color":"aqua"} \
]

execute if function ww:config/flag/show_ai_prophecy run tellraw @s [ \
  {"text":"♦ ","color":"red"}, \
  {"text":"AI使用预言书后会广播结果","color":"aqua"} \
]

execute if function ww:config/flag/rifle_reset run tellraw @s [ \
  {"text":"♦ ","color":"red"}, \
  {"text":"每晚会自动清除猎枪的目标","color":"aqua"} \
]

execute store result score %index ww.var run data get storage ww:memory config.VOTE_ITEM_TYPE
execute if score %index ww.var matches 0 run tellraw @s [{"text":"♦ ","color":"yellow"}, {"text":"投票道具: ","color":"aqua"}, {"text":"暴民剑","color":"gold"}]
execute if score %index ww.var matches 1 run tellraw @s [{"text":"♦ ","color":"yellow"}, {"text":"投票道具: ","color":"aqua"}, {"text":"远距暴民剑","color":"gold"}]
execute if score %index ww.var matches 2 run tellraw @s [{"text":"♦ ","color":"yellow"}, {"text":"投票道具: ","color":"aqua"}, {"text":"穿墙投票","color":"gold"}]
execute if score %index ww.var matches 3 run tellraw @s [{"text":"♦ ","color":"yellow"}, {"text":"投票道具: ","color":"aqua"}, {"text":"投票书","color":"gold"}]

function ww:config/info/_flag {id: 'ENABLE_SKILL_GACHA', name: '技能大乱斗'}
function ww:config/info/_flag {id: 'ENABLE_FIND_THE_BUTTON', name: '找职业按钮'}
function ww:config/info/_flag {id: 'ENABLE_DEATH_CAUSE', name: '死因'}

execute store result score %temp ww.var run data get storage ww:memory config.GLOWING_ON_DAY
execute if score %temp ww.var matches 1.. run tellraw @s [ \
  {"text":"♦ ","color":"yellow"}, \
  {"text":"第 ","color":"aqua"}, \
  {"score":{"name":"%temp","objective":"ww.var"},"color":"green","bold":true}, \
  {"text":" 天开始白天全体发光","color":"aqua","bold":false} \
]

execute store result score %temp ww.var run data get storage ww:memory config.GLOWING_PLAYERS_REMAIN
execute if score %temp ww.var matches 1.. run tellraw @s [ \
  {"text":"♦ ","color":"yellow"}, \
  {"text":"剩余 ","color":"aqua"}, \
  {"score":{"name":"%temp","objective":"ww.var"},"color":"green","bold":true}, \
  {"text":" 人开始白天全体发光","color":"aqua","bold":false} \
]

# execute store result score %temp ww.var run data get storage ww:memory config.AI_COUNT
# execute if score %temp ww.var matches 1.. run tellraw @s [ \
#   {"text":"♦ ","color":"yellow"}, \
#   {"text":"AI ","color":"aqua"}, \
#   {"score":{"name":"%temp","objective":"ww.var"},"color":"green","bold":true}, \
#   {"text":" 人","color":"aqua","bold":false} \
# ]

execute store result score %temp ww.var run data get storage ww:memory config.OFFICER_COUNT
execute if score %temp ww.var matches 1.. run tellraw @s [ \
  {"text":"♦ ","color":"yellow"}, \
  {"text":"警长 ","color":"aqua"}, \
  {"score":{"name":"%temp","objective":"ww.var"},"color":"green","bold":true}, \
  {"text":" 人","color":"aqua","bold":false} \
]

execute store result score %temp ww.var run data get storage ww:memory config.FOOL_COUNT
execute if score %temp ww.var matches 1.. run tellraw @s [ \
  {"text":"♦ ","color":"yellow"}, \
  {"text":"蠢蛋 ","color":"aqua"}, \
  {"score":{"name":"%temp","objective":"ww.var"},"color":"green","bold":true}, \
  {"text":" 人","color":"aqua","bold":false} \
]