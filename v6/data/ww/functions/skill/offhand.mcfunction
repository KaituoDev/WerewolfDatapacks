## use ww:offhand/... predicates

execute if predicate ww:offhand/tp/self run function ww:skill/tp/self
execute if predicate ww:offhand/suit/on run function ww:skill/suit/on
execute if predicate ww:offhand/suit/off run function ww:skill/suit/off
execute if predicate ww:offhand/reveal/wolf run function ww:skill/reveal/wolf
execute if predicate ww:offhand/glow/all run function ww:skill/glow/all
execute if predicate ww:offhand/glow/self run function ww:skill/glow/self
execute if predicate ww:offhand/speed/self run function ww:skill/speed/self

execute if predicate ww:offhand/diary/seer run function ww:skill/diary/seer
execute if predicate ww:offhand/immune/self run function ww:skill/immune/self
execute if predicate ww:offhand/immune/field run function ww:skill/immune/field

execute if predicate ww:offhand/rifle run function ww:skill/rifle
execute if predicate ww:offhand/flashbang run function ww:skill/flashbang
execute if predicate ww:offhand/sing run function ww:skill/sing
execute if predicate ww:offhand/bomb run function ww:skill/bomb
execute if predicate ww:offhand/bravery run function ww:skill/bravery
execute if predicate ww:offhand/capture run function ww:skill/capture

execute if predicate ww:offhand/ghost/on run function ww:skill/ghost/on
execute if predicate ww:offhand/ghost/off run function ww:skill/ghost/off

execute if predicate ww:offhand/shovel run function ww:skill/shovel

execute if predicate ww:offhand/hijack/on run function ww:skill/hijack/on
execute if predicate ww:offhand/hijack/off run function ww:skill/hijack/off

execute if predicate ww:mode/riot if predicate ww:offhand/ninja/scapegoat run function ww:skill/ninja/scapegoat
execute if predicate ww:mode/debate if predicate ww:offhand/ninja/scapegoat run function ww:book/ninja
execute if predicate ww:offhand/ninja/random run function ww:skill/ninja/random
execute if predicate ww:offhand/duel run function ww:player/looking_at/casting

execute if predicate ww:offhand/diary/team run function ww:skill/diary/team


execute if predicate ww:mode/riot if predicate ww:offhand/vote/potion_death run function ww:role/witch/potion/cast
execute if predicate ww:mode/riot if predicate ww:offhand/vote/potion_heal run function ww:role/witch/potion/cast
execute if predicate ww:mode/debate if predicate ww:offhand/vote/potion_death run function ww:book/potion_death
execute if predicate ww:mode/debate if predicate ww:offhand/vote/potion_heal run function ww:book/potion_heal

execute if predicate ww:offhand/skip run function ww:time/skip
execute if predicate ww:offhand/void run function ww:vote/morning/void
execute if predicate ww:offhand/instant_death run function ww:skill/instant_death

## settings
function ww:setting/switcher/offhand

## gacha
execute if predicate ww:offhand/gacha run function ww:gacha/draw

## history
execute if predicate ww:mainhand/history if predicate ww:sneaking run function ww:history/read
execute if predicate ww:mainhand/history unless predicate ww:sneaking run function ww:history/step

function ww:skill/__init