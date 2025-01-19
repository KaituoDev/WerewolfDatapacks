# context: @s = player
# location: at the origin
# inputs: {id}
# output: ww:output timeDisplay

data remove storage ww:output timeDisplay
$execute store result score %ticks ww.var run data get storage ww:memory config.'$(id)'

scoreboard players set %divider ww.var 20
execute store result score %seconds ww.var run scoreboard players operation %ticks ww.var /= %divider ww.var
execute store result score %minutes ww.var run scoreboard players get %seconds ww.var
scoreboard players set %divider ww.var 60
scoreboard players operation %minutes ww.var /= %divider ww.var
scoreboard players operation %seconds ww.var %= %divider ww.var

data modify storage ww:output timeDisplay set value '[{"score":{"name":"%seconds","objective":"ww.var"},"color":"green","bold":true},{"text":"秒","color":"white","bold":true}]'
execute if score %minutes ww.var matches 1.. run data modify storage ww:output timeDisplay set value \
  '[{"score":{"name":"%minutes","objective":"ww.var"},"color":"green","bold":true},{"text":"分","color":"white","bold":true}]'
execute if score %minutes ww.var matches 1.. if score %seconds ww.var matches 1.. run data modify storage ww:output timeDisplay set value \
  '[{"score":{"name":"%minutes","objective":"ww.var"},"color":"green","bold":true},{"text":"分","color":"white","bold":true},{"score":{"name":"%seconds","objective":"ww.var"},"color":"green","bold":true},{"text":"秒","color":"white","bold":true}]'