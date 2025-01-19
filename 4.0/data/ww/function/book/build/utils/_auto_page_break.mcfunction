# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput
# inputs: {maxLinesPerPage}

$scoreboard players set %maxLinesPerPage ww.var $(maxLinesPerPage)
scoreboard players operation %currentLineCount ww.var = %rowIndex ww.var
# scoreboard players add %currentLineCount ww.var 1
scoreboard players operation %currentLineCount ww.var %= %maxLinesPerPage ww.var

execute if score %currentLineCount ww.var matches 0 run function ww:book/build/utils/new_page