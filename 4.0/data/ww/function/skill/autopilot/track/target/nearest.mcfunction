# context: @s = player | villager, @n[tag=this] = @s
# output: entities @e[tag=candidate]

tag @s add this
tag @n[tag=!this,predicate=ww:alive,predicate=!ww:is_invisible] add candidate
tag @s remove this

return 1