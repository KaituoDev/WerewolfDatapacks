function ww:core/destroy

function ww:core/load/objectives
function ww:core/load/rules
function ww:core/load/bossbar

execute store result score %koumi_map system run data get storage ww:prebuilt koumiMap

function ww:core/load/values

# Set a storage shulker_box
forceload add 0 0
setblock 0 0 0 shulker_box

team add officer "警長"
team modify officer prefix [{"text":"[","color":"white","bold":true},{"text":"警長","color":"yellow"},{"text":"] ","color":"white"}]
team modify officer nametagVisibility never

team add player
team modify player nametagVisibility never

time set noon
effect clear @a

data modify storage ww:game mapNames set value ["地點1","地點2","地點3","地點4","地點5","地點6","地點7","地點8","地點9","地點10"]
data modify storage ww:game randomMapName set value '隨機地圖'
execute if score %koumi_map system matches 1 run data modify storage ww:game mapNames set value ["雪町","美術館","水晶風暴","河堤社區","經典城鎮","海底都市","渡假村","Underground","威尼斯小鎮","花村","酷米溫泉旅館"]

weather clear

# Set Default Lobby at World Spawn
execute if score %koumi_map system matches 1 run function ww:core/load/prebuilt
execute if score %koumi_map system matches 0 run function ww:setting/map/lobby

clear @a written_book{setting:1b}
clear @a written_book{intro:1b}

tellraw @a [{"text":"[酷米家族] 狼人殺 - 重製版","color":"green","bold":true},{"text":" v6.0 ","color":"red","bold":true},{"text":"已順利載入","color":"white","bold":false}]