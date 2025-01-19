## CONTEXT: @p[tag=this] id

scoreboard players operation %objCount var = %current id
data modify storage ww:game tempArray set value []
data remove storage ww:game temp
data remove storage ww:game currentObj

function ww:vote/reveal_team/get_obj
data modify storage ww:game diary.team set from storage ww:game tempArray