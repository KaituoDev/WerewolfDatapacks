# context: @s = player
# inputs: {origin, pos, name: config name}

# 1. get the current config value by name
$execute unless data storage ww:memory config.'$(name)' run return run function ww:chat/_dm {type:'error',message:'设定 $(name) 不存在'}

scoreboard players set %temp ww.var 1
$execute store result score %toggle ww.var run data get storage ww:memory config.'$(name)'

# 2. flip value and store
execute store result score %toggle ww.var run scoreboard players operation %temp ww.var -= %toggle ww.var
$execute store result storage ww:memory config.'$(name)' int 1 run scoreboard players get %toggle ww.var

# 3. set the third line of text on the sign
$function ww:config/board/action/toggle/_update_sign {origin: $(origin), pos: '$(pos)', name: '$(name)'}