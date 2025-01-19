# context: @s = player
# inputs: {origin, pos, name: config name}

# 1. check if the config value exists
$execute unless data storage ww:memory config.'$(name)' run return run function ww:chat/_dm {type:'error',message:'設定 $(name) 不存在'}

# 2. increment/decrement
$execute store result score %count ww.var run data get storage ww:memory config.'$(name)'
$execute unless predicate ww:sneaking store result storage ww:memory config.'$(name)' int 1 run scoreboard players add %count ww.var 1 
$execute if predicate ww:sneaking if score %count ww.var matches 1.. store result storage ww:memory config.'$(name)' int 1 run scoreboard players remove %count ww.var 1 

# 3. set the third line of text on the sign
$function ww:config/board/action/range/_update_sign {origin: $(origin), pos: '$(pos)', name: '$(name)'}