# context: @s = player
# inputs: {origin, pos, index}
# Assumption: only 6 signs per page

$scoreboard players set %map ww.system $(index)

$data modify storage ww:temp resetInput set value {origin: $(origin)}
$scoreboard players set %batch ww.var $(index)
scoreboard players set %divider ww.var 6

# gets the quotient
execute store result storage ww:temp resetInput.batch int 1 run scoreboard players operation %batch ww.var /= %divider ww.var

function ww:config/board/action/map/_reset with storage ww:temp resetInput

$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/map/_update_sign {index: '$(index)', origin: $(origin), pos: '$(pos)', color: 'yellow', glowing: 0b}