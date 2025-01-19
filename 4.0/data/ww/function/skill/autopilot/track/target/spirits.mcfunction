# context: @s = player | villager, @n[tag=this] = @s
# scores: %is_fool ww.var
# output: entities @e[tag=candidate]

# not fool
execute if score %is_fool ww.var matches 0 run \ 
  tag @e[tag=!this,predicate=ww:alive,predicate=!ww:is_invisible,tag=!spirits] add candidate

# is fool
execute if score %is_fool ww.var matches 1 run \ 
  tag @e[tag=!this,predicate=ww:alive,predicate=!ww:is_invisible,tag=spirits] add candidate