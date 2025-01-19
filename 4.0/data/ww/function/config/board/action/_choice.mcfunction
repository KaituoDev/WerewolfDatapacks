# context: @s = player
# inputs: {origin, pos, name: config name}

# 1. check if the config value exists
$execute unless data storage ww:memory config.'$(name)' run return run function ww:chat/_dm {type:'error',message:'设定 $(name) 不存在'}

# 2. cycle
$execute store result score %count ww.var run data get storage ww:memory config.'$(name)'
scoreboard players add %count ww.var 1

$execute store result score %length ww.var run data get storage ww:memory config.'$(name)_Choices'
execute if score %count ww.var >= %length ww.var run scoreboard players set %count ww.var 0

$execute store result storage ww:memory config.'$(name)' int 1 run scoreboard players get %count ww.var

# 3. set the third line of text on the sign
$function ww:config/board/action/choice/_update_sign {origin: $(origin), pos: '$(pos)', name: '$(name)', choices: []}