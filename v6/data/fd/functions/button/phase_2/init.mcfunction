scoreboard players operation %PHASE var = %PHASE_2 constant
schedule clear fd:button/phase_2/init

tag @a remove placing
execute as @a run function fd:button/used/reset
clear @a
title @a actionbar ""

effect clear @a speed
effect give @a speed 1000000 1 true

title @a title {"text":"找按鈕時間!!","color":"yellow"}
title @a subtitle {"text":"按鈕都有對應的職業","color":"red"}

# give all buttons a role
function ww:role/assign/buttons

function fd:countdown/end
function fd:countdown/3m
schedule function fd:button/phase_2/end 180s

execute as @a run function ww:game/teleport
