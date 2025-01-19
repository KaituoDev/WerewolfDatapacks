# context: @s = player | villager, @n[tag=this] = @s
# scores: %is_fool ww.var
# output: entities @e[tag=candidate]

# not fool
execute if score %is_fool ww.var matches 0 run \ 
  tag @e[tag=!this,predicate=ww:alive,predicate=!ww:is_invisible,tag=!ww.wolf_kind] add candidate

# not fool and no candidate from above
# and self is alpha wolf
execute if score %is_fool ww.var matches 0 run \
  execute unless entity @e[tag=candidate] if entity @s[tag=alpha_wolf] run \
  tag @e[tag=!this,predicate=ww:alive,predicate=!ww:is_invisible,tag=!alpha_wolf,tag=ww.wolf_kind] add candidate

# is fool
execute if score %is_fool ww.var matches 1 run \ 
  tag @e[tag=!this,predicate=ww:alive,predicate=!ww:is_invisible,tag=ww.wolf_kind] add candidate