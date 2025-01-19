schedule clear ww:role/equip_all

function ww:reset/local_id

execute as @a[tag=alive] run function ww:role/equip

execute if predicate ww:morning if predicate ww:mode/riot as @a[tag=alive] run function ww:item/skill/skip
execute if predicate ww:morning if predicate ww:mode/riot if score %day system matches 2.. as @a[tag=alive] run function ww:item/vote/riot

# morning vote book (morning, debate)
execute if predicate ww:morning if predicate ww:mode/debate as @a[tag=alive] run function ww:book/morning

# undo vote item (morning, any mode)
execute if predicate ww:morning if score %day system matches 2.. as @a[tag=alive] run function ww:item/skill/void

# teaming diary (morning + night, any mode)
execute if predicate ww:teaming as @a[tag=alive] run function ww:item/skill/diary/team

# teaming reveal book (night, any mode)
execute if predicate ww:teaming if predicate ww:night as @a[tag=alive] run function ww:book/reveal_team

# possibly affair book