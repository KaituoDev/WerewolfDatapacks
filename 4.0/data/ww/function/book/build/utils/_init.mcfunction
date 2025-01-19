# inputs: {title, id}

scoreboard players set %rowIndex ww.var 0
scoreboard players set %enumeratedIndex ww.var 0
scoreboard players add %currentBookId ww.system 1

$data modify storage ww:temp createBookInput set value { \
  title: '$(title)', \ 
  pages: [], \
  rows: [], \
  enumerated: [[]], \
  id: '$(id)' \
}