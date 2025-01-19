# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput

execute store result score %maxEnumeratedIndex ww.var run data get storage ww:temp createBookInput.enumerated
scoreboard players remove %maxEnumeratedIndex ww.var 1
scoreboard players set %currentEnumeratedIndex ww.var 0

# if enumerated array is empty
execute if score %maxEnumeratedIndex ww.var matches ..-1 run return fail

data modify storage ww:temp constructPagesInput set value {}
execute store result storage ww:temp constructPagesInput.enumeratedIndex int 1 run scoreboard players get %currentEnumeratedIndex ww.var

execute if score %maxEnumeratedIndex ww.var matches 0.. run \
  function ww:book/build/utils/_construct with storage ww:temp constructPagesInput

# clone rows to ww:book storage
data modify storage ww:temp storeBookRowsInput set value {}
execute store result storage ww:temp storeBookRowsInput.index int 1 run \
  scoreboard players get %currentBookId ww.system
function ww:book/build/utils/_store_book_rows with storage ww:temp storeBookRowsInput