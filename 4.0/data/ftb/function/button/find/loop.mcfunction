# context: @s = player

scoreboard players remove %raydist ftb.var 1

execute positioned ~1 ~1 ~1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~1 ~1 ~ if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~ ~1 ~1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~1 ~ ~1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~ ~ ~ if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~1 ~-1 ~ if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~ ~-1 ~1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1 
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #minecraft:buttons if function ftb:button/find/validate run return 1

execute if score %raydist ftb.var matches 1.. positioned ^ ^ ^0.25 run function ftb:button/find/loop