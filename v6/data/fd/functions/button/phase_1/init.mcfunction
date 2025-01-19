scoreboard players operation %PHASE var = %PHASE_1 constant

scoreboard players set @a[tag=alive] button_type 0
tag @a[tag=alive] add placing

execute as @a[tag=placing] run function fd:button/placing/obtain/give
execute as @a[tag=placing] run function fd:button/phase_1/effects

title @a title {"text":"藏按鈕時間!!","color":"yellow"}

# start countdown
function fd:button/phase_1/countdown