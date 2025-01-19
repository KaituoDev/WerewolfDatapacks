# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput

data modify storage ww:temp appendRowInput set value {}
execute store result storage ww:temp appendRowInput.rowIndex int 1 run scoreboard players get %rowIndex ww.var
scoreboard players add %rowIndex ww.var 1
execute store result storage ww:temp appendRowInput.enumeratedIndex int 1 run scoreboard players get %enumeratedIndex ww.var
execute store result storage ww:temp appendRowInput.bookIndex int 1 run scoreboard players get %currentBookId ww.system
function ww:book/build/utils/_append_row with storage ww:temp appendRowInput