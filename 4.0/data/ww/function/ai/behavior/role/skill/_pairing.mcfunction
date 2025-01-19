# context: @s = villager
# inputs: {count}

data modify storage ww:temp setStateInput set value {path: 'pairing', value: []}

$execute as @e[predicate=ww:alive,tag=!ww.lover,limit=$(count),sort=random] run \
 function ww:ai/behavior/role/skill/pairing/record

# validation
execute store result score %length ww.var run data get storage ww:temp setStateInput.value
$execute unless score %length ww.var matches $(count) run return fail

function ww:player/role/_set_state with storage ww:temp setStateInput
function ww:book/action/pairing/finalize