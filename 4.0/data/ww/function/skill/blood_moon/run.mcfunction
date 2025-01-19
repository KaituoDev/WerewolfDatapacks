# context: @s = player

clear @s *[minecraft:custom_data~{blood_moon:true}]

execute if entity @s[tag=ww.fool] run function ww:player/death/blood_moon
execute if entity @s[tag=ww.fool] as @a run function ww:chat/_dm { type: 'rich_lmao', \
  message: '[{"text":"是的, 血月發動失敗了","color":"white","bold":false}]' \
}
execute if entity @s[tag=ww.fool] run return 0

execute as @a run function ww:chat/_dm { type: 'rich_warn', \
  message: '[{"text":"血月降臨","color":"red","bold":true},{"text":", 全體狼人獲得大幅度速度提升","color":"white","bold":false}]' \
}

scoreboard players set %isBloodMoon ww.system 1

data modify storage ww:temp setStateInput set value {path: 'dyingDate', value: {death: 'blood_moon'}}
data modify storage ww:temp setStateInput.value.source set from entity @s UUID
scoreboard players operation %temp ww.var = %days ww.system
execute store result storage ww:temp setStateInput.value.date int 1 run scoreboard players add %temp ww.var 1
function ww:player/role/_set_state with storage ww:temp setStateInput

execute if predicate ww:is_night run return 0
function ww:game/elimination/reset
function ww:time/skip