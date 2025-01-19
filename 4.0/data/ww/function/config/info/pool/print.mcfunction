# context: @s = player
# storage: ww:temp configInfoPool

execute store result score %length ww.var run data get storage ww:temp configInfoPoolCampaign
execute if score %length ww.var matches 0 run return 0

data remove storage ww:temp text

execute if score %length ww.var matches 1.. run data modify storage ww:temp text set value '[ \
  {"nbt":"configInfoPoolCampaign[0]","storage":"ww:temp","interpret":true} \
]'

execute if score %length ww.var matches 2.. run data modify storage ww:temp text set value '[ \
  {"nbt":"configInfoPoolCampaign[0]","storage":"ww:temp","interpret":true}, \
  {"text":"   ","color":"white","bold":true}, \
  {"nbt":"configInfoPoolCampaign[1]","storage":"ww:temp","interpret":true} \
]'

execute if score %length ww.var matches 3.. run data modify storage ww:temp text set value '[ \
  {"nbt":"configInfoPoolCampaign[0]","storage":"ww:temp","interpret":true}, \
  {"text":"   ","color":"white","bold":true}, \
  {"nbt":"configInfoPoolCampaign[1]","storage":"ww:temp","interpret":true}, \
  {"text":"   ","color":"white","bold":true}, \
  {"nbt":"configInfoPoolCampaign[2]","storage":"ww:temp","interpret":true} \
]'

tellraw @s {"nbt":"text","storage":"ww:temp","interpret":true}

execute if score %length ww.var matches 1.. run data remove storage ww:temp configInfoPoolCampaign[0]
execute if score %length ww.var matches 2.. run data remove storage ww:temp configInfoPoolCampaign[0]
execute if score %length ww.var matches 3.. run data remove storage ww:temp configInfoPoolCampaign[0]

function ww:config/info/pool/print