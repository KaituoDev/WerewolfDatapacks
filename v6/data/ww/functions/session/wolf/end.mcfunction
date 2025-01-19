clear @a written_book{vote:1b,wolf:1b}
clear @a warped_fungus_on_a_stick{vote:1b,wolf:1b}

bossbar set minecraft:wolf_vote visible false
bossbar set minecraft:skip_item visible false

schedule clear ww:session/wolf/main_1s

# finalize wolf votes
# notify witches
# hand out skip item

function ww:vote/wolf/finalize
function ww:vote/wolf/notify

execute as @a[tag=alive] run function ww:item/skill/skip