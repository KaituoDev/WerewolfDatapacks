# context: @s = player
# scores: %index ww.var, %map ww.system, %maxAllowedIndex ww.var
# storage: ww:temp updateSignInput, ww:temp updateSelectedSignInput
# inputs: {origin, pos}

$data modify storage ww:temp updateSignInput.pos set value '$(pos)'

execute store result storage ww:temp updateSignInput.index int 1 run scoreboard players add %index ww.var 1
data modify storage ww:temp updateSelectedSignInput.index set from storage ww:temp updateSignInput.index
data modify storage ww:temp updateSelectedSignInput.pos set from storage ww:temp updateSignInput.pos

$execute if score %index ww.var > %maxAllowedIndex ww.var run return run execute at @e[nbt={UUID:$(origin)}] run data merge block $(pos) { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

execute unless score %index ww.var = %map ww.system run \
  function ww:config/board/action/map/_update_sign with storage ww:temp updateSignInput
execute if score %index ww.var = %map ww.system run \
  function ww:config/board/action/map/_update_sign with storage ww:temp updateSelectedSignInput