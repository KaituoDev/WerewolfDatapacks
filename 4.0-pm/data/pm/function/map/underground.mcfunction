# underground

tag @a[predicate=ww:alive] add tp_candidate
tag @a[tag=tp_candidate,scores={TP_PAD_CD=1..}] remove tp_candidate

execute positioned -568 88 -703 as @a[tag=tp_candidate,distance=..2] run function pm:map/underground/tp/farm
execute positioned -549 82 -659 as @a[tag=tp_candidate,distance=..1.5] run function pm:map/underground/tp/house
execute positioned -483 90 -679 as @a[tag=tp_candidate,distance=..0.5] run function pm:map/underground/tp/water
execute positioned -515 82 -688 as @a[tag=tp_candidate,distance=..2] run function pm:map/underground/tp/temmie

tag @a remove tp_candidate
scoreboard players remove @a[scores={TP_PAD_CD=1..}] TP_PAD_CD 1