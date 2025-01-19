## use ww:mainhand/... predicates

execute if predicate ww:mainhand/tp/self run function ww:skill/tp/self
execute if predicate ww:mainhand/suit/on run function ww:skill/suit/on
execute if predicate ww:mainhand/suit/off run function ww:skill/suit/off
execute if predicate ww:mainhand/reveal/wolf run function ww:skill/reveal/wolf
execute if predicate ww:mainhand/glow/all run function ww:skill/glow/all
execute if predicate ww:mainhand/glow/self run function ww:skill/glow/self
execute if predicate ww:mainhand/speed/self run function ww:skill/speed/self

execute if predicate ww:mainhand/diary/seer run function ww:skill/diary/seer
execute if predicate ww:mainhand/immune/self run function ww:skill/immune/self
execute if predicate ww:mainhand/immune/field run function ww:skill/immune/field

execute if predicate ww:mainhand/rifle run function ww:skill/rifle
execute if predicate ww:mainhand/flashbang run function ww:skill/flashbang
execute if predicate ww:mainhand/sing run function ww:skill/sing
execute if predicate ww:mainhand/bomb run function ww:skill/bomb
execute if predicate ww:mainhand/bravery run function ww:skill/bravery
execute if predicate ww:mainhand/capture run function ww:skill/capture

execute if predicate ww:mainhand/ghost/on run function ww:skill/ghost/on
execute if predicate ww:mainhand/ghost/off run function ww:skill/ghost/off

execute if predicate ww:mainhand/shovel run function ww:skill/shovel

execute if predicate ww:mainhand/hijack/on run function ww:skill/hijack/on
execute if predicate ww:mainhand/hijack/off run function ww:skill/hijack/off

execute if predicate ww:mode/riot if predicate ww:mainhand/ninja/scapegoat run function ww:skill/ninja/scapegoat
execute if predicate ww:mode/debate if predicate ww:mainhand/ninja/scapegoat run function ww:book/ninja
execute if predicate ww:mainhand/ninja/random run function ww:skill/ninja/random
execute if predicate ww:mainhand/duel run function ww:player/looking_at/casting

execute if predicate ww:mainhand/diary/team run function ww:skill/diary/team


execute if predicate ww:mode/riot if predicate ww:mainhand/vote/potion_death run function ww:role/witch/potion/cast
execute if predicate ww:mode/riot if predicate ww:mainhand/vote/potion_heal run function ww:role/witch/potion/cast
execute if predicate ww:mode/debate if predicate ww:mainhand/vote/potion_death run function ww:book/potion_death
execute if predicate ww:mode/debate if predicate ww:mainhand/vote/potion_heal run function ww:book/potion_heal

execute if predicate ww:mainhand/skip run function ww:time/skip
execute if predicate ww:mainhand/void run function ww:vote/morning/void
execute if predicate ww:mainhand/instant_death run function ww:skill/instant_death

## settings
function ww:setting/switcher/mainhand

## gacha
execute if predicate ww:mainhand/gacha run function ww:gacha/draw

## history
execute if predicate ww:mainhand/history if predicate ww:sneaking run function ww:history/read
execute if predicate ww:mainhand/history unless predicate ww:sneaking run function ww:history/step

function ww:skill/__init