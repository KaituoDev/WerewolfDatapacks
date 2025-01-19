# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var, %maxEnumeratedIndex ww.var
# storage: ww:temp createBookInput
# inputs: {enumeratedIndex}

data modify storage ww:temp joinStringInput set value {delimiter: ','}
$data modify storage ww:temp joinStringInput.strings set from storage ww:temp createBookInput.enumerated[$(enumeratedIndex)]
function ww:utils/_join_string with storage ww:temp joinStringInput

# the previous output is '{storage0},{storage1},...'
data modify storage ww:temp joinStringInput set value {delimiter: '', strings: ["[","]"]}
data modify storage ww:temp joinStringInput.strings insert 1 from storage ww:output joinString
function ww:utils/_join_string with storage ww:temp joinStringInput

data modify storage ww:temp createBookInput.pages append from storage ww:output joinString


# determine to continue loop
data modify storage ww:temp constructPagesInput set value {}
execute store result storage ww:temp constructPagesInput.enumeratedIndex int 1 run scoreboard players add %currentEnumeratedIndex ww.var 1

execute if score %currentEnumeratedIndex ww.var <= %maxEnumeratedIndex ww.var run \
  function ww:book/build/utils/_construct with storage ww:temp constructPagesInput