# context: server
# scores: %rainbowGlow ww.system

scoreboard players remove %rainbowGlow ww.system 1

execute if score %rainbowGlow ww.system matches ..0 run return run function ww:skill/glow_up/_change_color {color: 'reset'}

scoreboard players operation %temp ww.var = %rainbowGlow ww.system
scoreboard players set %divider ww.var 7
scoreboard players operation %temp ww.var %= %divider ww.var

execute if score %temp ww.var matches 0 run return run function ww:skill/glow_up/_change_color {color: 'red'}
execute if score %temp ww.var matches 1 run return run function ww:skill/glow_up/_change_color {color: 'gold'}
execute if score %temp ww.var matches 2 run return run function ww:skill/glow_up/_change_color {color: 'yellow'}
execute if score %temp ww.var matches 3 run return run function ww:skill/glow_up/_change_color {color: 'green'}
execute if score %temp ww.var matches 4 run return run function ww:skill/glow_up/_change_color {color: 'blue'}
execute if score %temp ww.var matches 5 run return run function ww:skill/glow_up/_change_color {color: 'aqua'}
execute if score %temp ww.var matches 6 run return run function ww:skill/glow_up/_change_color {color: 'light_purple'}