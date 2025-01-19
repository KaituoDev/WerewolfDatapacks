# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput

scoreboard players add %enumeratedIndex ww.var 1
data modify storage ww:temp createBookInput.enumerated append value []