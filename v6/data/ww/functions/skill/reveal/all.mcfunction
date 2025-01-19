tellraw @a ""
function ww:history/init

data modify storage ww:game history.data set value '{"text":"<狼人陣營>","color":"red","bold":true}'
execute if entity @a[tag=bads] run tellraw @a {"text":"<狼人陣營>","color":"red","bold":true}
execute if entity @a[tag=bads] run function ww:history/record
execute as @a[scores={id=1..},tag=bads] run function ww:skill/reveal/all/self

data modify storage ww:game history.data set value '{"text":"<好人陣營>","color":"red","bold":true}'
execute if entity @a[tag=goods] run tellraw @a {"text":"<好人陣營>","color":"red","bold":true}
execute if entity @a[tag=goods] run function ww:history/record
execute as @a[scores={id=1..},tag=goods] run function ww:skill/reveal/all/self

data modify storage ww:game history.data set value '{"text":"<怨靈陣營>","color":"red","bold":true}'
execute if entity @a[tag=wraiths] run tellraw @a {"text":"<怨靈陣營>","color":"red","bold":true}
execute if entity @a[tag=wraiths] run function ww:history/record
execute as @a[scores={id=1..},tag=wraiths] run function ww:skill/reveal/all/self

data modify storage ww:game history.data set value '{"text":"<戀人配對>","color":"red","bold":true}'
execute if entity @a[tag=cupid,tag=pairedA,tag=pairedB] run tellraw @a {"text":"<戀人配對>","color":"red","bold":true}
execute if entity @a[tag=cupid,tag=pairedA,tag=pairedB] run function ww:history/record
execute as @a[tag=cupid,tag=pairedA,tag=pairedB] run function ww:skill/reveal/all/cupid
tellraw @a ""

execute if predicate ww:teaming run function ww:skill/reveal/all/teaming

function ww:history/end