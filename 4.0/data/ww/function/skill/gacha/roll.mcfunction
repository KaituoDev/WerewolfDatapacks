# context: @s = player

execute store result score %length ww.var run data get storage ww:temp GACHA_SKILLS
execute if score %length ww.var matches 0 run return fail

data modify storage ww:temp randInput set value {min: 0}
execute store result storage ww:temp randInput.max int 1 run scoreboard players remove %length ww.var 1

data modify storage ww:temp randomGachaInput set value {}
execute store result storage ww:temp randomGachaInput.index int 1 run \
  function ww:utils/_rand with storage ww:temp randInput

function ww:skill/gacha/_give with storage ww:temp randomGachaInput