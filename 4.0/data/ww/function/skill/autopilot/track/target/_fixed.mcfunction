# context: @s = player | villager
# inputs: {score}
# output: entities @e[tag=candidate], 1 = success | 0 = fail

$execute unless entity @n[scores={ww.globalId=$(score)},predicate=ww:alive] run return fail
$tag @n[scores={ww.globalId=$(score)}] add candidate

return 1